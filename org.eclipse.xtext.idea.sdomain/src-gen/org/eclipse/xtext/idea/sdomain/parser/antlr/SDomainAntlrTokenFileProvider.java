/*
 * generated by Xtext
 */
package org.eclipse.xtext.idea.sdomain.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class SDomainAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/eclipse/xtext/idea/sdomain/parser/antlr/internal/InternalSDomain.tokens");
	}
}
