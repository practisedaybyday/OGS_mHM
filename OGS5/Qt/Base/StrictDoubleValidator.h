/*
 * StrictDoubleValidator.h
 *
 *  Created on: Jan 24, 2011
 *      Author: TF
 */

#ifndef STRICTDOUBLEVALIDATOR_H_
#define STRICTDOUBLEVALIDATOR_H_

// source code adapted from:
// http://developer.qt.nokia.com/faq/answer/i_can_still_insert_numbers_outside_the_range_specified_with_a_qdoublevalida

#include <QDoubleValidator>

class StrictDoubleValidator : public QDoubleValidator {
public:
	StrictDoubleValidator ( double min, double max, size_t decimals, QObject* parent = 0) :
		QDoubleValidator( min, max, decimals, parent)
	{}

	QValidator::State validate(QString & input, int &pos) const
	{
		if (input.isEmpty() || input == ".") return Intermediate;

		if (QDoubleValidator::validate(input, pos) != Acceptable) {
			return Invalid;
		}
		return Acceptable;
	}
};

#endif /* STRICTDOUBLEVALIDATOR_H_ */