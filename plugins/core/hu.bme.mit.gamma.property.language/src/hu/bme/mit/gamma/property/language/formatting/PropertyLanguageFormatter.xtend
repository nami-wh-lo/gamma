/********************************************************************************
 * Copyright (c) 2018-2020 Contributors to the Gamma project
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * SPDX-License-Identifier: EPL-1.0
 ********************************************************************************/
package hu.bme.mit.gamma.property.language.formatting

import hu.bme.mit.gamma.expression.language.formatting.ExpressionLanguageFormatterUtil
import hu.bme.mit.gamma.property.language.services.PropertyLanguageGrammarAccess
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig

class PropertyLanguageFormatter extends AbstractDeclarativeFormatter {
	
	final ExpressionLanguageFormatterUtil expressionLanguageFormatterUtil = new ExpressionLanguageFormatterUtil
	
	protected override void configureFormatting(FormattingConfig c) {
		val f = grammarAccess as PropertyLanguageGrammarAccess
		// Using the basic expression language formatting
		expressionLanguageFormatterUtil.format(c, f)
	}
}
