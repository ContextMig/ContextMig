.class public Lcom/benoitletondor/easybudgetapp/helper/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x27f7fa58185964aL    # -3.372453992745311E296

    const-string v2, "com/benoitletondor/easybudgetapp/helper/UIHelper"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static animateActivityEnter(Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->willAnimateActivityEnter(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 159
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/16 v2, 0x17

    aput-boolean v4, v0, v2

    .line 124
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/16 v2, 0x18

    aput-boolean v4, v0, v2

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    const/16 v3, 0x19

    aput-boolean v4, v0, v3

    .line 127
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    .line 159
    :goto_1
    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 127
    :cond_1
    const/16 v3, 0x1b

    aput-boolean v4, v0, v3

    .line 129
    new-instance v3, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;

    invoke-direct {v3, v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    goto :goto_1
.end method

.method public static areAnimationsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "animation_enabled"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x2d

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static centerDialogButtons(Landroid/support/v7/app/AlertDialog;)V
    .locals 8
    .param p0    # Landroid/support/v7/app/AlertDialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 318
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/16 v5, 0x30

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 319
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .local v2, "positiveButtonLL":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0x31

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 321
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x32

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 323
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/16 v5, 0x33

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 324
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 325
    .local v0, "negativeButtonL":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0x34

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 326
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x35

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 328
    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/16 v5, 0x36

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 329
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    .local v1, "neutralButtonL":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0x37

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 331
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/16 v3, 0x38

    aput-boolean v7, v4, v3

    .line 337
    .end local v0    # "negativeButtonL":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "neutralButtonL":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/16 v3, 0x3b

    aput-boolean v7, v4, v3

    return-void

    .line 333
    :catch_0
    move-exception v3

    const/16 v5, 0x39

    aput-boolean v7, v4, v5

    .line 335
    const-string v5, "Error while centering dialog buttons"

    invoke-static {v5, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v3, 0x3a

    aput-boolean v7, v4, v3

    goto :goto_0
.end method

.method public static isCompatibleWithActivityEnterAnimation()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xe

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public static preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V
    .locals 3
    .param p0    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    new-instance v1, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;

    invoke-direct {v1, p0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static removeButtonBorder(Landroid/widget/Button;)V
    .locals 4
    .param p0    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    aput-boolean v3, v0, v3

    .line 64
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 60
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static setAnimationsEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "animation_enabled"

    invoke-virtual {v1, v2, p1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static setFocus(Landroid/widget/EditText;)V
    .locals 4
    .param p0    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v0, 0x1e

    aput-boolean v3, v1, v0

    .line 170
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    .line 171
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 172
    const/16 v0, 0x20

    aput-boolean v3, v1, v0

    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 85
    :goto_0
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void

    .line 74
    :cond_0
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    .line 78
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 83
    :goto_1
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 78
    :cond_1
    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    goto :goto_1
.end method

.method public static showFAB(Landroid/view/View;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 183
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/16 v2, 0x22

    aput-boolean v4, v0, v2

    .line 184
    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/16 v2, 0x23

    aput-boolean v4, v0, v2

    .line 185
    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v4, v0, v2

    .line 186
    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/16 v3, 0x25

    aput-boolean v4, v0, v3

    .line 187
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/16 v2, 0x26

    aput-boolean v4, v0, v2

    .line 188
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/16 v2, 0x27

    aput-boolean v4, v0, v2

    .line 189
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    const/16 v1, 0x28

    aput-boolean v4, v0, v1

    .line 197
    :goto_0
    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    const/16 v1, 0x29

    aput-boolean v4, v0, v1

    .line 194
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    const/16 v1, 0x2a

    aput-boolean v4, v0, v1

    .line 195
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public static willAnimateActivityEnter(Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->isCompatibleWithActivityEnterAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    :goto_0
    const/16 v3, 0x13

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "animate"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x12

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method
