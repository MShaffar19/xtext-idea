package org.eclipse.xtext.testlanguages.indent.idea.lang.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class IndentationAwareTestLanguageAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/eclipse/xtext/testlanguages/indent/idea/parser/antlr/internal/PsiInternalIndentationAwareTestLanguage.tokens");
	}
}
