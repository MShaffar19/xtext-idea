/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.idea.parser;

import com.google.common.base.Objects;
import com.google.inject.Inject;
import com.google.inject.Provider;
import com.intellij.lang.ASTNode;
import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiParser;
import com.intellij.psi.tree.IElementType;
import java.util.Set;
import org.antlr.runtime.TokenSource;
import org.antlr.runtime.TokenStream;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtend.lib.annotations.AccessorType;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.AbstractRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.idea.nodemodel.IASTNodeAwareNodeModelBuilder;
import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.idea.parser.PsiXtextTokenStream;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.ITokenDefProvider;
import org.eclipse.xtext.parser.antlr.IUnorderedGroupHelper;
import org.eclipse.xtext.parser.antlr.TokenSourceProvider;
import org.eclipse.xtext.psi.tree.IGrammarAwareElementType;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.Pure;

@SuppressWarnings("all")
public abstract class AbstractXtextPsiParser implements PsiParser {
  @Inject
  @Accessors(AccessorType.PROTECTED_GETTER)
  private ITokenDefProvider tokenDefProvider;
  
  @Inject
  @Accessors(AccessorType.PROTECTED_GETTER)
  private TokenTypeProvider tokenTypeProvider;
  
  @Inject
  @Accessors(AccessorType.PROTECTED_GETTER)
  private TokenSourceProvider tokenSourceProvider;
  
  @Inject
  @Accessors(AccessorType.PROTECTED_GETTER)
  private Provider<IUnorderedGroupHelper> unorderedGroupHelperProvider;
  
  @Override
  public ASTNode parse(final IElementType root, final PsiBuilder builder) {
    try {
      ASTNode _xblockexpression = null;
      {
        AbstractPsiAntlrParser _createParser = this.createParser(builder, this.createTokenStream(builder));
        final Procedure1<AbstractPsiAntlrParser> _function = (AbstractPsiAntlrParser it) -> {
          it.setTokenTypeMap(this.tokenDefProvider.getTokenDefMap());
          it.setUnorderedGroupHelper(this.unorderedGroupHelperProvider.get());
          it.getUnorderedGroupHelper().initializeWith(it);
        };
        final AbstractPsiAntlrParser parser = ObjectExtensions.<AbstractPsiAntlrParser>operator_doubleArrow(_createParser, _function);
        PsiBuilder.Marker rootMarker = builder.mark();
        final String entryRuleName = this.getEntryRuleName(root);
        boolean _notEquals = (!Objects.equal(entryRuleName, null));
        if (_notEquals) {
          parser.parse(entryRuleName);
        } else {
          parser.parse();
        }
        rootMarker.done(root);
        _xblockexpression = builder.getTreeBuilt();
      }
      return _xblockexpression;
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  protected String getEntryRuleName(final IElementType type) {
    String _xifexpression = null;
    if ((type instanceof IGrammarAwareElementType)) {
      String _switchResult = null;
      EObject _grammarElement = ((IGrammarAwareElementType)type).getGrammarElement();
      final EObject grammarElement = _grammarElement;
      boolean _matched = false;
      if (grammarElement instanceof AbstractRule) {
        _matched=true;
        _switchResult = ((AbstractRule)grammarElement).getName();
      }
      if (!_matched) {
        if (grammarElement instanceof RuleCall) {
          _matched=true;
          _switchResult = ((RuleCall)grammarElement).getRule().getName();
        }
      }
      _xifexpression = _switchResult;
    }
    return _xifexpression;
  }
  
  protected abstract AbstractPsiAntlrParser createParser(final PsiBuilder builder, final TokenStream tokenStream);
  
  protected PsiXtextTokenStream createTokenStream(final PsiBuilder builder) {
    PsiXtextTokenStream _xblockexpression = null;
    {
      final TokenSource tokenSource = this.createTokenSource(builder);
      PsiXtextTokenStream _psiXtextTokenStream = new PsiXtextTokenStream(builder, tokenSource, this.tokenDefProvider);
      final Procedure1<PsiXtextTokenStream> _function = (PsiXtextTokenStream it) -> {
        final Integer lookAhead = builder.<Integer>getUserData(IASTNodeAwareNodeModelBuilder.LOOK_AHEAD_KEY);
        boolean _notEquals = (!Objects.equal(lookAhead, null));
        if (_notEquals) {
          it.initCurrentLookAhead((lookAhead).intValue());
        }
        it.setInitialHiddenTokens(((String[])Conversions.unwrapArray(this.getInitialHiddenTokens(), String.class)));
      };
      _xblockexpression = ObjectExtensions.<PsiXtextTokenStream>operator_doubleArrow(_psiXtextTokenStream, _function);
    }
    return _xblockexpression;
  }
  
  protected TokenSource createTokenSource(final PsiBuilder builder) {
    return this.tokenSourceProvider.createTokenSource(builder.getOriginalText());
  }
  
  protected abstract Set<String> getInitialHiddenTokens();
  
  @Pure
  protected ITokenDefProvider getTokenDefProvider() {
    return this.tokenDefProvider;
  }
  
  @Pure
  protected TokenTypeProvider getTokenTypeProvider() {
    return this.tokenTypeProvider;
  }
  
  @Pure
  protected TokenSourceProvider getTokenSourceProvider() {
    return this.tokenSourceProvider;
  }
  
  @Pure
  protected Provider<IUnorderedGroupHelper> getUnorderedGroupHelperProvider() {
    return this.unorderedGroupHelperProvider;
  }
}
