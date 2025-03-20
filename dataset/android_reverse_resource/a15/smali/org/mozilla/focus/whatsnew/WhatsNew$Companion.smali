.class public final Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
.super Ljava/lang/Object;
.source "WhatsNew.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/whatsnew/WhatsNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;-><init>()V

    return-void
.end method

.method private final userViewedWhatsNew(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)V
    .locals 2
    .param p1, "storage"    # Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    .prologue
    .line 103
    check-cast p0, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->setWasUpdatedRecently$app_focusWebviewUniversalRelease(Ljava/lang/Boolean;)V

    .line 104
    new-instance v0, Lorg/mozilla/focus/whatsnew/WhatsNew;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/focus/whatsnew/WhatsNew;-><init>(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/mozilla/focus/whatsnew/WhatsNew;->access$clearWhatsNewCounter(Lorg/mozilla/focus/whatsnew/WhatsNew;)V

    .line 105
    return-void
.end method


# virtual methods
.method public final getWasUpdatedRecently$app_focusWebviewUniversalRelease()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/mozilla/focus/whatsnew/WhatsNew;->access$getWasUpdatedRecently$cp()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final setWasUpdatedRecently$app_focusWebviewUniversalRelease(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    invoke-static {p1}, Lorg/mozilla/focus/whatsnew/WhatsNew;->access$setWasUpdatedRecently$cp(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final shouldHighlightWhatsNew(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    check-cast p0, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
    new-instance v0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;-><init>(Landroid/content/Context;)V

    check-cast v0, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .line 95
    new-instance v1, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;

    invoke-direct {v1, p1}, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;-><init>(Landroid/content/Context;)V

    check-cast v1, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    .line 94
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->shouldHighlightWhatsNew(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)Z

    move-result v0

    return v0
.end method

.method public final shouldHighlightWhatsNew(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)Z
    .locals 3
    .param p1, "currentVersion"    # Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
    .param p2, "storage"    # Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    .prologue
    const-string v1, "currentVersion"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "storage"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 81
    check-cast v1, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    invoke-virtual {v1}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->getWasUpdatedRecently$app_focusWebviewUniversalRelease()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    new-instance v0, Lorg/mozilla/focus/whatsnew/WhatsNew;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/mozilla/focus/whatsnew/WhatsNew;-><init>(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v0, "whatsNew":Lorg/mozilla/focus/whatsnew/WhatsNew;
    move-object v1, p0

    .line 83
    check-cast v1, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    invoke-static {v0, p1}, Lorg/mozilla/focus/whatsnew/WhatsNew;->access$hasBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNew;Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->setWasUpdatedRecently$app_focusWebviewUniversalRelease(Ljava/lang/Boolean;)V

    .line 86
    .end local v0    # "whatsNew":Lorg/mozilla/focus/whatsnew/WhatsNew;
    :cond_0
    check-cast p0, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
    invoke-virtual {p0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->getWasUpdatedRecently$app_focusWebviewUniversalRelease()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public final userViewedWhatsNew(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    check-cast p0, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
    new-instance v0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;-><init>(Landroid/content/Context;)V

    check-cast v0, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-direct {p0, v0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->userViewedWhatsNew(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)V

    .line 113
    return-void
.end method
