/*
 * generated by Xtext
 */
package org.eclipse.xtext.testlanguages.backtracking.idea;

import com.google.inject.Binder;
import com.google.inject.name.Names;
import com.intellij.facet.FacetTypeId;
import com.intellij.lang.ParserDefinition;
import com.intellij.lang.PsiParser;
import org.eclipse.xtext.ide.LexerIdeBindings;
import org.eclipse.xtext.ide.editor.contentassist.antlr.IContentAssistParser;
import org.eclipse.xtext.idea.DefaultIdeaModule;
import org.eclipse.xtext.idea.facet.AbstractFacetConfiguration;
import org.eclipse.xtext.idea.lang.IElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;
import org.eclipse.xtext.parser.antlr.Lexer;
import org.eclipse.xtext.parser.antlr.LexerBindings;
import org.eclipse.xtext.service.SingletonBinding;
import org.eclipse.xtext.testlanguages.backtracking.ide.contentassist.antlr.SimpleBeeLangTestLanguageParser;
import org.eclipse.xtext.testlanguages.backtracking.ide.contentassist.antlr.internal.InternalSimpleBeeLangTestLanguageLexer;
import org.eclipse.xtext.testlanguages.backtracking.idea.facet.SimpleBeeLangTestLanguageFacetConfiguration;
import org.eclipse.xtext.testlanguages.backtracking.idea.facet.SimpleBeeLangTestLanguageFacetType;
import org.eclipse.xtext.testlanguages.backtracking.idea.lang.SimpleBeeLangTestLanguageElementTypeProvider;
import org.eclipse.xtext.testlanguages.backtracking.idea.lang.parser.SimpleBeeLangTestLanguageParserDefinition;
import org.eclipse.xtext.testlanguages.backtracking.idea.lang.parser.SimpleBeeLangTestLanguagePsiParser;
import org.eclipse.xtext.testlanguages.backtracking.idea.lang.parser.SimpleBeeLangTestLanguageTokenTypeProvider;
import org.eclipse.xtext.testlanguages.backtracking.idea.lang.parser.antlr.SimpleBeeLangTestLanguageAntlrTokenFileProvider;
import org.eclipse.xtext.testlanguages.backtracking.idea.parser.antlr.internal.PsiInternalSimpleBeeLangTestLanguageLexer;

/**
 * Manual modifications go to {@link SimpleBeeLangTestLanguageIdeaModule}.
 */
@SuppressWarnings("all")
public abstract class AbstractSimpleBeeLangTestLanguageIdeaModule extends DefaultIdeaModule {
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends IAntlrTokenFileProvider> bindIAntlrTokenFileProvider() {
		return SimpleBeeLangTestLanguageAntlrTokenFileProvider.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends Lexer> bindLexer() {
		return PsiInternalSimpleBeeLangTestLanguageLexer.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public void configureRuntimeLexer(Binder binder) {
		binder.bind(Lexer.class)
			.annotatedWith(Names.named(LexerBindings.RUNTIME))
			.to(PsiInternalSimpleBeeLangTestLanguageLexer.class);
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends PsiParser> bindPsiParser() {
		return SimpleBeeLangTestLanguagePsiParser.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends TokenTypeProvider> bindTokenTypeProvider() {
		return SimpleBeeLangTestLanguageTokenTypeProvider.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends ParserDefinition> bindParserDefinition() {
		return SimpleBeeLangTestLanguageParserDefinition.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	@SingletonBinding
	public Class<? extends IElementTypeProvider> bindIElementTypeProvider() {
		return SimpleBeeLangTestLanguageElementTypeProvider.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends AbstractFacetConfiguration> bindAbstractFacetConfiguration() {
		return SimpleBeeLangTestLanguageFacetConfiguration.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public FacetTypeId bindFacetTypeIdToInstance() {
		return SimpleBeeLangTestLanguageFacetType.TYPEID;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public Class<? extends IContentAssistParser> bindIContentAssistParser() {
		return SimpleBeeLangTestLanguageParser.class;
	}
	
	// contributed by org.eclipse.xtext.xtext.generator.idea.IdeaPluginGenerator
	public void configureContentAssistLexer(Binder binder) {
		binder.bind(org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer.class).annotatedWith(Names.named(LexerIdeBindings.CONTENT_ASSIST)).to(InternalSimpleBeeLangTestLanguageLexer.class);
	}
	
}
