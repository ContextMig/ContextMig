.class public final Lorg/mozilla/focus/popup/PopupUtils;
.super Ljava/lang/Object;
.source "PopupUtils.kt"


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/popup/PopupUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/mozilla/focus/popup/PopupUtils;

    invoke-direct {v0}, Lorg/mozilla/focus/popup/PopupUtils;-><init>()V

    sput-object v0, Lorg/mozilla/focus/popup/PopupUtils;->INSTANCE:Lorg/mozilla/focus/popup/PopupUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getScaledDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 134
    .local v1, "iconSize":I
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p3, v5, v3, v5}, Lmozilla/components/support/ktx/android/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 135
    .local v0, "icon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 136
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method private final setOrigin(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hostInfo"    # Landroid/widget/TextView;
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "origin":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    return-void

    .line 72
    .restart local p2    # "origin":Ljava/lang/String;
    :cond_0
    nop

    .line 73
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    move-object v0, p3

    .line 75
    goto :goto_1
.end method

.method private final setSecurityInfoInsecure(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identityState"    # Landroid/widget/TextView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "securityInfoIcon"    # Landroid/widget/ImageView;

    .prologue
    const v5, 0x7f08009c

    const/4 v4, 0x0

    .line 110
    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    const v3, 0x7f060049

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 113
    .local v0, "inactiveColor":I
    const v3, 0x7f0600af

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 115
    .local v1, "photonYellow":I
    invoke-static {p3}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const v3, 0x7f08008d

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 122
    sget-object v3, Lmozilla/components/support/utils/DrawableUtils;->INSTANCE:Lmozilla/components/support/utils/DrawableUtils;

    invoke-virtual {v3, p1, v5, v1}, Lmozilla/components/support/utils/DrawableUtils;->loadAndTintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    .local v2, "securityIcon":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f07008a

    invoke-direct {p0, p1, v3, v2}, Lorg/mozilla/focus/popup/PopupUtils;->getScaledDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    invoke-virtual {p2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private final setSecurityInfoSecure(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identityState"    # Landroid/widget/TextView;
    .param p3, "verifierInfo"    # Ljava/lang/String;
    .param p4, "verifier"    # Landroid/widget/TextView;
    .param p5, "securityInfoIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    const v2, 0x7f060084

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 88
    .local v1, "photonGreen":I
    sget-object v2, Lmozilla/components/support/utils/DrawableUtils;->INSTANCE:Lmozilla/components/support/utils/DrawableUtils;

    const v3, 0x7f080085

    invoke-virtual {v2, p1, v3, v1}, Lmozilla/components/support/utils/DrawableUtils;->loadAndTintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "checkIcon":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f07008a

    invoke-direct {p0, p1, v2, v0}, Lorg/mozilla/focus/popup/PopupUtils;->getScaledDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    invoke-virtual {p2, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    if-eqz p3, :cond_0

    .line 94
    const v2, 0x7f0f0111

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    aput-object p3, v3, v5

    .line 94
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    const v2, 0x7f08008f

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 102
    return-void

    .line 98
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final createSecurityPopup(Landroid/content/Context;Lorg/mozilla/focus/session/Session;)Landroid/widget/PopupWindow;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    const-string v2, "context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "session"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/focus/session/Session;->getSecure()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    const-string v3, "session.secure"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/focus/session/Session;->getSecure()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    const-string v3, "session.secure"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 31
    .local v10, "isSecure":Ljava/lang/Boolean;
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    const-string v3, "session.url"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 32
    .local v14, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 34
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 35
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0062

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 36
    .local v12, "popUpView":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/focus/session/Session;->getSecurityOrigin()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "session.securityOrigin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 37
    .local v11, "origin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/focus/session/Session;->getSecurityVerifier()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "session.securityVerifier"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 38
    .local v5, "verifierInfo":Ljava/lang/String;
    const v2, 0x7f0900f8

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 39
    .local v8, "hostInfo":Landroid/widget/TextView;
    const v2, 0x7f0900f6

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 40
    .local v7, "securityInfoIcon":Landroid/widget/ImageView;
    const v2, 0x7f090130

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 42
    .local v6, "verifier":Landroid/widget/TextView;
    const-string v2, "hostInfo"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v14}, Lorg/mozilla/focus/popup/PopupUtils;->setOrigin(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const v2, 0x7f0900f7

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    .local v4, "identityState":Landroid/widget/TextView;
    const-string v2, "isSecure"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const v2, 0x7f0f0110

    .line 46
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "identityState"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "verifier"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v2, "securityInfoIcon"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 52
    invoke-direct/range {v2 .. v7}, Lorg/mozilla/focus/popup/PopupUtils;->setSecurityInfoSecure(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 60
    :goto_1
    const v2, 0x7f070081

    .line 59
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 60
    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 62
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x7f07008c

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 63
    const/4 v15, -0x2

    const/16 v16, 0x1

    .line 62
    move/from16 v0, v16

    invoke-direct {v2, v12, v3, v15, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 65
    .end local v4    # "identityState":Landroid/widget/TextView;
    .end local v5    # "verifierInfo":Ljava/lang/String;
    .end local v6    # "verifier":Landroid/widget/TextView;
    .end local v7    # "securityInfoIcon":Landroid/widget/ImageView;
    .end local v8    # "hostInfo":Landroid/widget/TextView;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "isSecure":Ljava/lang/Boolean;
    .end local v11    # "origin":Ljava/lang/String;
    .end local v12    # "popUpView":Landroid/view/View;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "url":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 49
    .restart local v4    # "identityState":Landroid/widget/TextView;
    .restart local v5    # "verifierInfo":Ljava/lang/String;
    .restart local v6    # "verifier":Landroid/widget/TextView;
    .restart local v7    # "securityInfoIcon":Landroid/widget/ImageView;
    .restart local v8    # "hostInfo":Landroid/widget/TextView;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "isSecure":Ljava/lang/Boolean;
    .restart local v11    # "origin":Ljava/lang/String;
    .restart local v12    # "popUpView":Landroid/view/View;
    .restart local v13    # "res":Landroid/content/res/Resources;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0f010f

    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "verifier"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    const-string v2, "identityState"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "securityInfoIcon"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v14, v7}, Lorg/mozilla/focus/popup/PopupUtils;->setSecurityInfoInsecure(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 65
    .end local v4    # "identityState":Landroid/widget/TextView;
    .end local v5    # "verifierInfo":Ljava/lang/String;
    .end local v6    # "verifier":Landroid/widget/TextView;
    .end local v7    # "securityInfoIcon":Landroid/widget/ImageView;
    .end local v8    # "hostInfo":Landroid/widget/TextView;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "isSecure":Ljava/lang/Boolean;
    .end local v11    # "origin":Ljava/lang/String;
    .end local v12    # "popUpView":Landroid/view/View;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "url":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
