.class public final Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;
.super Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
.source "WhatsNewVersion.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;

    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    iget-object v1, p1, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    invoke-static {v0}, Lmozilla/components/support/ktx/android/content/ContextKt;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextWhatsNewVersion(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/whatsnew/ContextWhatsNewVersion;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
