package org.eclipse.xtext.grammarinheritance.idea.highlighting;

import org.jetbrains.annotations.NotNull;

import com.intellij.openapi.fileTypes.SingleLazyInstanceSyntaxHighlighterFactory;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import org.eclipse.xtext.grammarinheritance.idea.lang.ConcreteTestLanguageLanguage;

public class ConcreteTestLanguageSyntaxHighlighterFactory extends SingleLazyInstanceSyntaxHighlighterFactory {
	
	@Override
    @NotNull
    protected SyntaxHighlighter createHighlighter() {
        return ConcreteTestLanguageLanguage.INSTANCE.getInstance(SyntaxHighlighter.class);
    }

}
