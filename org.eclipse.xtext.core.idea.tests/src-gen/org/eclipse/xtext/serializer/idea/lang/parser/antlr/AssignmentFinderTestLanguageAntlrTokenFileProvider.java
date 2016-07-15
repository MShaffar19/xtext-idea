package org.eclipse.xtext.serializer.idea.lang.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class AssignmentFinderTestLanguageAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/eclipse/xtext/serializer/idea/parser/antlr/internal/PsiInternalAssignmentFinderTestLanguage.tokens");
	}
}
