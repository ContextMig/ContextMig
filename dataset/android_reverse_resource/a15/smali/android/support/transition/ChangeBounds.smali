.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/support/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 85
    new-instance v0, Landroid/support/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 98
    new-instance v0, Landroid/support/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 111
    new-instance v0, Landroid/support/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 128
    new-instance v0, Landroid/support/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 145
    new-instance v0, Landroid/support/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 166
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    .line 163
    iput-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 164
    iput-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    .line 169
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 8
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 216
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 218
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 224
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    const/4 v1, 0x1

    .line 245
    .local v1, "parentMatches":Z
    iget-boolean v4, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v4, :cond_0

    .line 246
    invoke-virtual {p0, p1, v2}, Landroid/support/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    .line 247
    .local v0, "endValues":Landroid/support/transition/TransitionValues;
    if-nez v0, :cond_2

    .line 248
    if-ne p1, p2, :cond_1

    move v1, v2

    .line 253
    .end local v0    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_1
    move v1, v3

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    iget-object v4, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 241
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 236
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 56
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 260
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 261
    :cond_0
    const/16 v18, 0x0

    .line 454
    :cond_1
    :goto_0
    return-object v18

    .line 263
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v46, v0

    .line 264
    .local v46, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v29, v0

    .line 265
    .local v29, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "android:changeBounds:parent"

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/view/ViewGroup;

    .line 266
    .local v45, "startParent":Landroid/view/ViewGroup;
    const-string v4, "android:changeBounds:parent"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 267
    .local v28, "endParent":Landroid/view/ViewGroup;
    if-eqz v45, :cond_3

    if-nez v28, :cond_4

    .line 268
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 270
    :cond_4
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 271
    .local v6, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 272
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/graphics/Rect;

    .line 273
    .local v41, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    .line 274
    .local v25, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    .line 275
    .local v44, "startLeft":I
    move-object/from16 v0, v25

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 276
    .local v8, "endLeft":I
    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v48, v0

    .line 277
    .local v48, "startTop":I
    move-object/from16 v0, v25

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 278
    .local v9, "endTop":I
    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v47, v0

    .line 279
    .local v47, "startRight":I
    move-object/from16 v0, v25

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 280
    .local v10, "endRight":I
    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v40, v0

    .line 281
    .local v40, "startBottom":I
    move-object/from16 v0, v25

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 282
    .local v11, "endBottom":I
    sub-int v49, v47, v44

    .line 283
    .local v49, "startWidth":I
    sub-int v43, v40, v48

    .line 284
    .local v43, "startHeight":I
    sub-int v30, v10, v8

    .line 285
    .local v30, "endWidth":I
    sub-int v27, v11, v9

    .line 286
    .local v27, "endHeight":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/graphics/Rect;

    .line 287
    .local v42, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 288
    .local v26, "endClip":Landroid/graphics/Rect;
    const/16 v35, 0x0

    .line 289
    .local v35, "numChanges":I
    if-eqz v49, :cond_5

    if-nez v43, :cond_6

    :cond_5
    if-eqz v30, :cond_a

    if-eqz v27, :cond_a

    .line 290
    :cond_6
    move/from16 v0, v44

    if-ne v0, v8, :cond_7

    move/from16 v0, v48

    if-eq v0, v9, :cond_8

    :cond_7
    add-int/lit8 v35, v35, 0x1

    .line 291
    :cond_8
    move/from16 v0, v47

    if-ne v0, v10, :cond_9

    move/from16 v0, v40

    if-eq v0, v11, :cond_a

    :cond_9
    add-int/lit8 v35, v35, 0x1

    .line 293
    :cond_a
    if-eqz v42, :cond_b

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    if-nez v42, :cond_d

    if-eqz v26, :cond_d

    .line 295
    :cond_c
    add-int/lit8 v35, v35, 0x1

    .line 297
    :cond_d
    if-lez v35, :cond_1a

    .line 299
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-nez v4, :cond_12

    .line 300
    move/from16 v0, v44

    move/from16 v1, v48

    move/from16 v2, v47

    move/from16 v3, v40

    invoke-static {v6, v0, v1, v2, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 302
    const/4 v4, 0x2

    move/from16 v0, v35

    if-ne v0, v4, :cond_f

    .line 303
    move/from16 v0, v49

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    move/from16 v0, v43

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v44

    int-to-float v5, v0

    move/from16 v0, v48

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v53

    .line 306
    .local v53, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v53

    invoke-static {v6, v4, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 387
    .end local v53    # "topLeftPath":Landroid/graphics/Path;
    .local v18, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    .line 389
    .local v37, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 390
    new-instance v54, Landroid/support/transition/ChangeBounds$9;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$9;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 417
    .local v54, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto/16 :goto_0

    .line 309
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v37    # "parent":Landroid/view/ViewGroup;
    .end local v54    # "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    :cond_e
    new-instance v55, Landroid/support/transition/ChangeBounds$ViewBounds;

    move-object/from16 v0, v55

    invoke-direct {v0, v6}, Landroid/support/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 310
    .local v55, "viewBounds":Landroid/support/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v44

    int-to-float v5, v0

    move/from16 v0, v48

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v53

    .line 312
    .restart local v53    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 313
    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-static {v0, v4, v1}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v52

    .line 315
    .local v52, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v40

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v22

    .line 317
    .local v22, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v55

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 319
    .local v21, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v39, Landroid/animation/AnimatorSet;

    invoke-direct/range {v39 .. v39}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    .local v39, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v52, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 321
    move-object/from16 v18, v39

    .line 322
    .restart local v18    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/support/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v4, v0, v1}, Landroid/support/transition/ChangeBounds$7;-><init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 329
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v21    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v22    # "bottomRightPath":Landroid/graphics/Path;
    .end local v39    # "set":Landroid/animation/AnimatorSet;
    .end local v52    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v53    # "topLeftPath":Landroid/graphics/Path;
    .end local v55    # "viewBounds":Landroid/support/transition/ChangeBounds$ViewBounds;
    :cond_f
    move/from16 v0, v44

    if-ne v0, v8, :cond_10

    move/from16 v0, v48

    if-eq v0, v9, :cond_11

    .line 330
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v44

    int-to-float v5, v0

    move/from16 v0, v48

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v53

    .line 332
    .restart local v53    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v53

    invoke-static {v6, v4, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 334
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 335
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v53    # "topLeftPath":Landroid/graphics/Path;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v40

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v20

    .line 337
    .local v20, "bottomRight":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v20

    invoke-static {v6, v4, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 339
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 341
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v20    # "bottomRight":Landroid/graphics/Path;
    :cond_12
    move/from16 v0, v49

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 342
    .local v34, "maxWidth":I
    move/from16 v0, v43

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 344
    .local v33, "maxHeight":I
    add-int v4, v44, v34

    add-int v5, v48, v33

    move/from16 v0, v44

    move/from16 v1, v48

    invoke-static {v6, v0, v1, v4, v5}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 347
    const/16 v38, 0x0

    .line 348
    .local v38, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v44

    if-ne v0, v8, :cond_13

    move/from16 v0, v48

    if-eq v0, v9, :cond_14

    .line 349
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v44

    int-to-float v5, v0

    move/from16 v0, v48

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v53

    .line 351
    .restart local v53    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v53

    invoke-static {v6, v4, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v38

    .line 354
    .end local v53    # "topLeftPath":Landroid/graphics/Path;
    :cond_14
    move-object/from16 v7, v26

    .line 355
    .local v7, "finalClip":Landroid/graphics/Rect;
    if-nez v42, :cond_15

    .line 356
    new-instance v42, Landroid/graphics/Rect;

    .end local v42    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v49

    move/from16 v2, v43

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .restart local v42    # "startClip":Landroid/graphics/Rect;
    :cond_15
    if-nez v26, :cond_16

    .line 359
    new-instance v26, Landroid/graphics/Rect;

    .end local v26    # "endClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v27

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    .restart local v26    # "endClip":Landroid/graphics/Rect;
    :cond_16
    const/16 v24, 0x0

    .line 362
    .local v24, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 363
    move-object/from16 v0, v42

    invoke-static {v6, v0}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 364
    const-string v4, "clipBounds"

    sget-object v5, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v42, v12, v13

    const/4 v13, 0x1

    aput-object v26, v12, v13

    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 366
    new-instance v4, Landroid/support/transition/ChangeBounds$8;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/support/transition/ChangeBounds$8;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    :cond_17
    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v18

    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 422
    .end local v7    # "finalClip":Landroid/graphics/Rect;
    .end local v8    # "endLeft":I
    .end local v9    # "endTop":I
    .end local v10    # "endRight":I
    .end local v11    # "endBottom":I
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v24    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v25    # "endBounds":Landroid/graphics/Rect;
    .end local v26    # "endClip":Landroid/graphics/Rect;
    .end local v27    # "endHeight":I
    .end local v30    # "endWidth":I
    .end local v33    # "maxHeight":I
    .end local v34    # "maxWidth":I
    .end local v35    # "numChanges":I
    .end local v38    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v40    # "startBottom":I
    .end local v41    # "startBounds":Landroid/graphics/Rect;
    .end local v42    # "startClip":Landroid/graphics/Rect;
    .end local v43    # "startHeight":I
    .end local v44    # "startLeft":I
    .end local v47    # "startRight":I
    .end local v48    # "startTop":I
    .end local v49    # "startWidth":I
    :cond_18
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 423
    .local v50, "startX":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 424
    .local v51, "startY":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 425
    .local v31, "endX":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 427
    .local v32, "endY":I
    move/from16 v0, v50

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    move/from16 v0, v51

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a

    .line 428
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 429
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 431
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    .local v23, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 433
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v17

    .line 436
    .local v17, "transitionAlpha":F
    const/4 v4, 0x0

    invoke-static {v6, v4}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 437
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v4

    invoke-interface {v4, v15}, Landroid/support/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v5, v50, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int v12, v51, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int v13, v31, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/16 v16, 0x1

    aget v14, v14, v16

    sub-int v14, v32, v14

    int-to-float v14, v14

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v53

    .line 441
    .restart local v53    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v36

    .line 443
    .local v36, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v36, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 444
    .local v18, "anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/support/transition/ChangeBounds$10;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Landroid/support/transition/ChangeBounds$10;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 454
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "transitionAlpha":F
    .end local v18    # "anim":Landroid/animation/ObjectAnimator;
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "canvas":Landroid/graphics/Canvas;
    .end local v31    # "endX":I
    .end local v32    # "endY":I
    .end local v36    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v50    # "startX":I
    .end local v51    # "startY":I
    .end local v53    # "topLeftPath":Landroid/graphics/Path;
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
