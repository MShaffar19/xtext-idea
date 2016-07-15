/*
 * generated by Xtext
 */
grammar PsiInternalBug419429;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parser.bug419429.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.bug419429.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.bug419429.idea.lang.Bug419429ElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.bug419429.services.Bug419429GrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected Bug419429GrammarAccess grammarAccess;

	protected Bug419429ElementTypeProvider elementTypeProvider;

	public PsiInternalBug419429Parser(PsiBuilder builder, TokenStream input, Bug419429ElementTypeProvider elementTypeProvider, Bug419429GrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "EReference";
	}

}

//Entry rule entryRuleEReference
entryRuleEReference returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getEReferenceElementType()); }
	iv_ruleEReference=ruleEReference
	{ $current=$iv_ruleEReference.current; }
	EOF;

// Rule EReference
ruleEReference returns [Boolean current=false]
:
	(
		(
			{
				if (!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
			{
				markLeaf(elementTypeProvider.getEReference_ETypeEClassifierCrossReference_0ElementType());
			}
			otherlv_0=RULE_ID
			{
				doneLeaf(otherlv_0);
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
