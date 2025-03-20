.class public final Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;
.super Ljava/lang/Object;
.source "WhatsNewStorage.kt"

# interfaces
.implements Lorg/mozilla/focus/whatsnew/WhatsNewStorage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatsNewStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatsNewStorage.kt\norg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage\n*L\n1#1,54:1\n*E\n"
.end annotation


# instance fields
.field private final sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "sharedPreference"    # Landroid/content/SharedPreferences;

    .prologue
    const-string v0, "sharedPreference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;->sharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getSessionCounter()I
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;->sharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "whatsnew-updateSessionCounter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;->sharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "whatsnew-lastKnownAppVersionName"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    new-instance v1, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    invoke-direct {v1, v0}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;-><init>(Ljava/lang/String;)V

    .end local v0    # "it":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public setSessionCounter(I)V
    .locals 2
    .param p1, "sessionCount"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;->sharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    const-string v1, "whatsnew-updateSessionCounter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method

.method public setVersion(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)V
    .locals 3
    .param p1, "version"    # Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .prologue
    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/SharedPreferenceWhatsNewStorage;->sharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    const-string v1, "whatsnew-lastKnownAppVersionName"

    invoke-virtual {p1}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method
