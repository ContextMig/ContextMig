.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# direct methods
.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v13, 0x0

    .line 509
    .local v13, "anim":Landroid/animation/Animator;
    const/4 v15, 0x0

    .line 513
    .local v15, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 515
    .local v16, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_8

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_8

    .line 518
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 522
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 523
    .local v20, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 525
    .local v17, "gotValues":Z
    const-string v4, "objectAnimator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p3

    .line 526
    invoke-static/range {v4 .. v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 551
    :goto_1
    if-eqz p5, :cond_0

    if-nez v17, :cond_0

    .line 552
    if-nez v15, :cond_2

    .line 553
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .restart local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_3
    const-string v4, "animator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 528
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v13

    goto :goto_1

    .line 529
    :cond_4
    const-string v4, "set"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 530
    new-instance v13, Landroid/animation/AnimatorSet;

    .end local v13    # "anim":Landroid/animation/Animator;
    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 531
    .restart local v13    # "anim":Landroid/animation/Animator;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 534
    .local v12, "a":Landroid/content/res/TypedArray;
    const-string v4, "ordering"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v12, v0, v4, v5, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    .local v10, "ordering":I
    move-object v9, v13

    .line 537
    check-cast v9, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 539
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 540
    .end local v10    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string v4, "propertyValuesHolder"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 542
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 543
    .local v22, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v22, :cond_6

    if-eqz v13, :cond_6

    instance-of v4, v13, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    move-object v4, v13

    .line 544
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 546
    :cond_6
    const/16 v17, 0x1

    .line 547
    goto/16 :goto_1

    .line 548
    .end local v22    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    .end local v17    # "gotValues":Z
    .end local v20    # "name":Ljava/lang/String;
    :cond_8
    if-eqz p5, :cond_a

    if-eqz v15, :cond_a

    .line 559
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v14, v4, [Landroid/animation/Animator;

    .line 560
    .local v14, "animsArray":[Landroid/animation/Animator;
    const/16 v18, 0x0

    .line 561
    .local v18, "index":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 562
    .local v12, "a":Landroid/animation/Animator;
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "index":I
    .local v19, "index":I
    aput-object v12, v14, v18

    move/from16 v18, v19

    .line 563
    .end local v19    # "index":I
    .restart local v18    # "index":I
    goto :goto_2

    .line 564
    .end local v12    # "a":Landroid/animation/Animator;
    :cond_9
    if-nez p6, :cond_b

    .line 565
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 570
    .end local v14    # "animsArray":[Landroid/animation/Animator;
    .end local v18    # "index":I
    :cond_a
    :goto_3
    return-object v13

    .line 567
    .restart local v14    # "animsArray":[Landroid/animation/Animator;
    .restart local v18    # "index":I
    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 779
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 782
    :goto_0
    return-object v0

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 781
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 805
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 806
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 807
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 808
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_0
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 21
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 207
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .line 208
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 209
    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 210
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    .line 211
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 213
    .local v13, "toType":I
    :goto_3
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 215
    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 216
    :cond_1
    const/16 p1, 0x3

    .line 222
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    const/4 v6, 0x1

    .line 224
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    .line 226
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 227
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v9

    .line 233
    .local v9, "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v10

    .line 234
    .local v10, "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    if-nez v9, :cond_3

    if-eqz v10, :cond_b

    .line 235
    :cond_3
    if-eqz v9, :cond_d

    .line 236
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 237
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c

    .line 238
    invoke-static {v9, v10}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 239
    new-instance v18, Landroid/view/InflateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Can\'t morph from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 207
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 208
    .restart local v7    # "hasFrom":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 210
    .restart local v5    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 211
    .restart local v8    # "hasTo":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 218
    .restart local v13    # "toType":I
    :cond_8
    const/16 p1, 0x0

    goto :goto_4

    .line 222
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 242
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v6    # "getFloats":Z
    .restart local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 330
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_b
    :goto_6
    return-object v11

    .line 245
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_6

    .line 248
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d
    if-eqz v10, :cond_b

    .line 249
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 250
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_6

    .line 255
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    .line 257
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 259
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    .line 261
    :cond_f
    if-eqz v6, :cond_16

    .line 264
    if-eqz v7, :cond_14

    .line 265
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    .line 266
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 270
    .local v16, "valueFrom":F
    :goto_7
    if-eqz v8, :cond_13

    .line 271
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    .line 272
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 276
    .local v17, "valueTo":F
    :goto_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 325
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_10
    :goto_9
    if-eqz v11, :cond_b

    if-eqz v3, :cond_b

    .line 326
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_6

    .line 268
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_7

    .line 274
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_8

    .line 279
    .end local v17    # "valueTo":F
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_9

    .line 282
    .end local v16    # "valueFrom":F
    :cond_14
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    .line 283
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 287
    .restart local v17    # "valueTo":F
    :goto_a
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_9

    .line 285
    .end local v17    # "valueTo":F
    :cond_15
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_a

    .line 292
    .end local v17    # "valueTo":F
    :cond_16
    if-eqz v7, :cond_1c

    .line 293
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_17

    .line 294
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 300
    .local v16, "valueFrom":I
    :goto_b
    if-eqz v8, :cond_1b

    .line 301
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_19

    .line 302
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 308
    .local v17, "valueTo":I
    :goto_c
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 295
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_17
    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 296
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 298
    .end local v16    # "valueFrom":I
    :cond_18
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 303
    :cond_19
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 304
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 306
    .end local v17    # "valueTo":I
    :cond_1a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 310
    .end local v17    # "valueTo":I
    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 313
    .end local v16    # "valueFrom":I
    :cond_1c
    if-eqz v8, :cond_10

    .line 314
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    .line 315
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 321
    .restart local v17    # "valueTo":I
    :goto_d
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 316
    .end local v17    # "valueTo":I
    :cond_1d
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 317
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d

    .line 319
    .end local v17    # "valueTo":I
    :cond_1e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 654
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 655
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    move v1, v2

    .line 656
    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .line 657
    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 658
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    .line 659
    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .line 663
    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 664
    :cond_1
    const/4 v6, 0x3

    .line 668
    .local v6, "valueType":I
    :goto_4
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    move v1, v7

    .line 655
    goto :goto_0

    .restart local v1    # "hasFrom":Z
    :cond_3
    move v0, v7

    .line 656
    goto :goto_1

    .restart local v0    # "fromType":I
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    move v2, v7

    .line 658
    goto :goto_2

    .restart local v2    # "hasTo":Z
    :cond_5
    move v3, v7

    .line 659
    goto :goto_3

    .line 666
    .restart local v3    # "toType":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 635
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 638
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v4, "value"

    invoke-static {v0, p3, v4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v2

    .line 640
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 643
    .local v1, "hasValue":Z
    :cond_0
    if-eqz v1, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    const/4 v3, 0x3

    .line 648
    .local v3, "valueType":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    return v3

    .line 646
    .end local v3    # "valueType":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_0
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 916
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 104
    .local v0, "objectAnimator":Landroid/animation/Animator;
    :goto_0
    return-object v0

    .line 102
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 131
    invoke-static {p0, p1, p2, v2, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 146
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v0

    .line 133
    .end local v0    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 889
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 891
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 894
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 895
    new-instance p4, Landroid/animation/ValueAnimator;

    .end local p4    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 898
    .restart local p4    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 901
    const-string v4, "interpolator"

    invoke-static {v0, p6, v4, v5, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 903
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 904
    invoke-static {p0, v3}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 905
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 909
    if-eqz v1, :cond_2

    .line 910
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 912
    :cond_2
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    sget-object v10, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    move-object/from16 v0, p3

    invoke-static {p1, p2, v0, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 820
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 822
    .local v6, "keyframe":Landroid/animation/Keyframe;
    const-string v10, "fraction"

    const/4 v11, 0x3

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 825
    .local v2, "fraction":F
    const-string v10, "value"

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v7

    .line 827
    .local v7, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_2

    const/4 v3, 0x1

    .line 828
    .local v3, "hasValue":Z
    :goto_0
    const/4 v10, 0x4

    move/from16 v0, p4

    if-ne v0, v10, :cond_0

    .line 831
    if-eqz v3, :cond_3

    iget v10, v7, Landroid/util/TypedValue;->type:I

    invoke-static {v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 832
    const/16 p4, 0x3

    .line 838
    :cond_0
    :goto_1
    if-eqz v3, :cond_4

    .line 839
    packed-switch p4, :pswitch_data_0

    .line 857
    :goto_2
    :pswitch_0
    const-string v10, "interpolator"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 859
    .local v8, "resID":I
    if-lez v8, :cond_1

    .line 860
    invoke-static {p0, v8}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 861
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v6, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 863
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 865
    return-object v6

    .line 827
    .end local v3    # "hasValue":Z
    .end local v8    # "resID":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 834
    .restart local v3    # "hasValue":Z
    :cond_3
    const/16 p4, 0x0

    goto :goto_1

    .line 841
    :pswitch_1
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    .line 843
    .local v9, "value":F
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 844
    goto :goto_2

    .line 847
    .end local v9    # "value":F
    :pswitch_2
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 849
    .local v4, "intValue":I
    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_2

    .line 853
    .end local v4    # "intValue":I
    :cond_4
    if-nez p4, :cond_5

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v6

    .line 854
    :goto_3
    goto :goto_2

    :cond_5
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_3

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v4, "anim":Landroid/animation/ObjectAnimator;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 873
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 875
    return-object v4
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    const/16 v24, 0x0

    .line 692
    .local v24, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    .line 695
    .local v18, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    .line 697
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 698
    .local v20, "name":Ljava/lang/String;
    const-string v3, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_1

    .line 700
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v3, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p5

    .line 703
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p5

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v16

    .line 705
    .local v16, "keyframe":Landroid/animation/Keyframe;
    if-eqz v16, :cond_3

    .line 706
    if-nez v18, :cond_2

    .line 707
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .restart local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 716
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v20    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "count":I
    if-lez v9, :cond_f

    .line 722
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Keyframe;

    .line 723
    .local v12, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/animation/Keyframe;

    .line 724
    .local v19, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v19 .. v19}, Landroid/animation/Keyframe;->getFraction()F

    move-result v10

    .line 725
    .local v10, "endFraction":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_5

    .line 726
    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gez v3, :cond_8

    .line 727
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 733
    :cond_5
    :goto_1
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    .line 734
    .local v21, "startFraction":F
    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_6

    .line 735
    const/4 v3, 0x0

    cmpg-float v3, v21, v3

    if-gez v3, :cond_9

    .line 736
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 742
    :cond_6
    :goto_2
    new-array v0, v9, [Landroid/animation/Keyframe;

    move-object/from16 v17, v0

    .line 743
    .local v17, "keyframeArray":[Landroid/animation/Keyframe;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v9, :cond_e

    .line 745
    aget-object v16, v17, v14

    .line 746
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v16 .. v16}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 747
    if-nez v14, :cond_a

    .line 748
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 744
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 729
    .end local v14    # "i":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 730
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 738
    .restart local v21    # "startFraction":F
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 739
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 749
    .restart local v14    # "i":I
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    .restart local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_a
    add-int/lit8 v3, v9, -0x1

    if-ne v14, v3, :cond_b

    .line 750
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 754
    :cond_b
    move/from16 v22, v14

    .line 755
    .local v22, "startIndex":I
    move v11, v14

    .line 756
    .local v11, "endIndex":I
    add-int/lit8 v15, v22, 0x1

    .local v15, "j":I
    :goto_5
    add-int/lit8 v3, v9, -0x1

    if-ge v15, v3, :cond_c

    .line 757
    aget-object v3, v17, v15

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    .line 762
    :cond_c
    add-int/lit8 v3, v11, 0x1

    aget-object v3, v17, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    add-int/lit8 v4, v22, -0x1

    aget-object v4, v17, v4

    .line 763
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v13, v3, v4

    .line 764
    .local v13, "gap":F
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v13, v1, v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_4

    .line 760
    .end local v13    # "gap":F
    :cond_d
    move v11, v15

    .line 756
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 768
    .end local v11    # "endIndex":I
    .end local v15    # "j":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v22    # "startIndex":I
    :cond_e
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v24

    .line 769
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_f

    .line 770
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 774
    .end local v9    # "count":I
    .end local v10    # "endFraction":F
    .end local v12    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v14    # "i":I
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v19    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_f
    return-object v24
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v15, 0x0

    .line 578
    .local v15, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .local v14, "type":I
    const/4 v3, 0x3

    if-eq v14, v3, :cond_5

    const/4 v3, 0x1

    if-eq v14, v3, :cond_5

    .line 581
    const/4 v3, 0x2

    if-eq v14, v3, :cond_0

    .line 582
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 586
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 588
    .local v12, "name":Ljava/lang/String;
    const-string v3, "propertyValuesHolder"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 589
    sget-object v3, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 592
    .local v9, "a":Landroid/content/res/TypedArray;
    const-string v3, "propertyName"

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, "propertyName":Ljava/lang/String;
    const-string v3, "valueType"

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .local v8, "valueType":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 598
    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 600
    .local v13, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v13, :cond_1

    .line 601
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v9, v8, v3, v4, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 606
    :cond_1
    if-eqz v13, :cond_3

    .line 607
    if-nez v15, :cond_2

    .line 608
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .restart local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_2
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 615
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "valueType":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 618
    .end local v12    # "name":Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    .line 619
    .local v16, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v15, :cond_6

    .line 620
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 621
    .local v10, "count":I
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    .line 622
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_6

    .line 623
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v16, v11

    .line 622
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 626
    .end local v10    # "count":I
    .end local v11    # "i":I
    :cond_6
    return-object v16
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 344
    const-string v6, "duration"

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v0, v6

    .line 346
    .local v0, "duration":J
    const-string v6, "startOffset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v4, v6

    .line 348
    .local v4, "startDelay":J
    const-string v6, "valueType"

    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 352
    .local v3, "valueType":I
    const-string v6, "valueFrom"

    invoke-static {p4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "valueTo"

    .line 353
    invoke-static {p4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 355
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 359
    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x6

    const-string v8, ""

    invoke-static {p1, v3, v6, v7, v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 362
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    .line 363
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    .end local v2    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    const-string v6, "repeatCount"

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    const-string v6, "repeatMode"

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 374
    if-eqz p2, :cond_2

    .line 375
    invoke-static {p0, p2, v3, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 377
    :cond_2
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x2

    .line 389
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 390
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v6, "pathData"

    const/4 v7, 0x1

    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "pathData":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 402
    const-string v6, "propertyXName"

    invoke-static {p1, p4, v6, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "propertyXName":Ljava/lang/String;
    const-string v6, "propertyYName"

    const/4 v7, 0x3

    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "propertyYName":Ljava/lang/String;
    if-eq p2, v8, :cond_0

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 411
    :cond_0
    const/4 p2, 0x0

    .line 413
    :cond_1
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 414
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 417
    :cond_2
    invoke-static {v2}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 418
    .local v1, "path":Landroid/graphics/Path;
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    invoke-static {v1, v0, v6, v4, v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v4    # "propertyXName":Ljava/lang/String;
    .end local v5    # "propertyYName":Ljava/lang/String;
    :goto_0
    return-void

    .line 421
    :cond_3
    const-string v6, "propertyName"

    const/4 v7, 0x0

    .line 422
    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v8, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    .local v8, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v14, 0x0

    .line 439
    .local v14, "totalLength":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    .line 443
    .local v10, "pathLength":F
    add-float/2addr v14, v10

    .line 444
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v17

    if-nez v17, :cond_0

    .line 449
    new-instance v11, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 451
    .local v11, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v17, 0x64

    div-float v18, v14, p2

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 453
    .local v9, "numPoints":I
    new-array v6, v9, [F

    .line 454
    .local v6, "mX":[F
    new-array v7, v9, [F

    .line 455
    .local v7, "mY":[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [F

    .line 457
    .local v12, "position":[F
    const/4 v2, 0x0

    .line 458
    .local v2, "contourIndex":I
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v13, v14, v17

    .line 459
    .local v13, "step":F
    const/4 v4, 0x0

    .line 464
    .local v4, "currentDistance":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 465
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v12, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 467
    const/16 v17, 0x0

    aget v17, v12, v17

    aput v17, v6, v5

    .line 468
    const/16 v17, 0x1

    aget v17, v12, v17

    aput v17, v7, v5

    .line 469
    add-float/2addr v4, v13

    .line 470
    add-int/lit8 v17, v2, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    add-int/lit8 v17, v2, 0x1

    .line 471
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpl-float v17, v4, v17

    if-lez v17, :cond_1

    .line 472
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v4, v4, v17

    .line 473
    add-int/lit8 v2, v2, 0x1

    .line 474
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 464
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :cond_2
    const/4 v15, 0x0

    .line 480
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x0

    .line 481
    .local v16, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz p3, :cond_3

    .line 482
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 484
    :cond_3
    if-eqz p4, :cond_4

    .line 485
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 487
    :cond_4
    if-nez v15, :cond_5

    .line 488
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 494
    :goto_1
    return-void

    .line 489
    :cond_5
    if-nez v16, :cond_6

    .line 490
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 492
    :cond_6
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1
.end method
