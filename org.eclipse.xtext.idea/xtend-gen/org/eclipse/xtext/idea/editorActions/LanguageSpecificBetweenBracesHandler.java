/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.idea.editorActions;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.intellij.codeInsight.editorActions.enter.EnterBetweenBracesHandler;
import org.eclipse.xtext.ide.editor.bracketmatching.BracePair;
import org.eclipse.xtext.ide.editor.bracketmatching.IBracePairProvider;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

@Singleton
@SuppressWarnings("all")
public class LanguageSpecificBetweenBracesHandler extends EnterBetweenBracesHandler {
  @Inject
  private IBracePairProvider bracePairProvider;
  
  @Override
  protected boolean isBracePair(final char c1, final char c2) {
    final Function1<BracePair, Boolean> _function = (BracePair it) -> {
      return Boolean.valueOf(((it.getLeftBrace().length() == 1) && (it.getRightBrace().length() == 1)));
    };
    final Function1<BracePair, Boolean> _function_1 = (BracePair it) -> {
      return Boolean.valueOf(((it.getLeftBrace().charAt(0) == c1) && (it.getRightBrace().charAt(0) == c2)));
    };
    return IterableExtensions.<BracePair>exists(IterableExtensions.<BracePair>filter(this.bracePairProvider.getPairs(), _function), _function_1);
  }
}
