package org.eclipse.xtext.parser.unorderedGroups.idea.lang.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class ExBacktrackingBug325745TestLanguageAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/eclipse/xtext/parser/unorderedGroups/idea/parser/antlr/internal/PsiInternalExBacktrackingBug325745TestLanguage.tokens");
	}
}
