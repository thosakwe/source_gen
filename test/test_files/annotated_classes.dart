// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library source_gen.test.annotation_test.classes;

import 'package:source_gen/generators/json_serializable.dart';

import 'annotations.dart';

part 'annotated_classes_part.dart';

const localUntypedAnnotation = const PublicAnnotationClass();

const PublicAnnotationClass localTypedAnnotation =
    const PublicAnnotationClass();

@PublicAnnotationClass()
class CtorNoParams {}

@OtherPublicAnnotationClass()
class OtherClassCtorNoParams {}

@PublicAnnotationClassInPart()
class CtorNoParamsFromPart {}

@PublicAnnotationClass.withAnIntAsOne()
class NonDefaultCtorNoParams {}

@PublicAnnotationClass.withPositionalArgs(42, 'custom value')
class NonDefaultCtorWithPositionalParams {}

@PublicAnnotationClass.withPositionalArgs(43, 'another value',
    boolArg: true, listArg: const [5, 6, 7])
class NonDefaultCtorWithPositionalAndNamedParams {}

@PublicAnnotationClass.withKids()
class WithNestedObjects {}

@objectAnnotation
class WithConstMapLiteral {}

@JsonSerializable()
class AnnotatedWithJson {}

@localTypedAnnotation
class WithLocalTypedField {}

@localUntypedAnnotation
class WithLocalUntypedField {}

@typedAnnotation
class WithTypedField {}

@untypedAnnotation
class WithUntypedField {}

@untypedAnnotationWithNonDefaultCtor
class WithAFieldFromNonDefaultCtor {}

@ExtendedAnnotationClass()
class WithChildClassAnnotation {}

@ExtendedAnnotationClassWithForwardedParameters(24)
class WithChildClassAnnotationAndForwardedParameters {}

@ExtendedAnnotationClassWithCustomAndForwardedParameters(23, 24)
class WithChildClassAnnotationAndCustomForwardedParameters {}
