.class public final Lorg/mozilla/focus/utils/Settings;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/Settings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/utils/Settings$Companion;

.field private static instance:Lorg/mozilla/focus/utils/Settings;


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/utils/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/utils/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/mozilla/focus/utils/Settings;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lorg/mozilla/focus/utils/Settings;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/mozilla/focus/utils/Settings;->instance:Lorg/mozilla/focus/utils/Settings;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lorg/mozilla/focus/utils/Settings;)V
    .locals 0
    .param p0, "<set-?>"    # Lorg/mozilla/focus/utils/Settings;

    .prologue
    .line 20
    sput-object p0, Lorg/mozilla/focus/utils/Settings;->instance:Lorg/mozilla/focus/utils/Settings;

    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lorg/mozilla/focus/utils/Settings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {v0, p0}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final getPreferenceKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(resourceId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getDefaultSearchEngineName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00ba

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences.getString(ge\u2026f_key_search_engine), \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDefaultSearchEngine(Lmozilla/components/browser/search/SearchEngine;)V
    .locals 3
    .param p1, "searchEngine"    # Lmozilla/components/browser/search/SearchEngine;

    .prologue
    const-string v0, "searchEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    const v1, 0x7f0f00ba

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method public final shouldAutocompleteFromCustomDomainList()Z
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    .line 93
    const v1, 0x7f0f00a4

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v2, 0x0

    .line 92
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    return v0
.end method

.method public final shouldAutocompleteFromShippedDomainList()Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    .line 88
    const v1, 0x7f0f00a5

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const/4 v2, 0x1

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    return v0
.end method

.method public final shouldBlockCookies()Z
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockCookiesValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    .line 64
    const v2, 0x7f0f00f7

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    return v0
.end method

.method public final shouldBlockCookiesValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    .line 59
    const v1, 0x7f0f00af

    .line 58
    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0f00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences.getString(ge\u2026block_cookies_no_option))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    return-object v0
.end method

.method public final shouldBlockImages()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldBlockJavaScript()Z
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    .line 54
    const v1, 0x7f0f00ad

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    return v0
.end method

.method public final shouldBlockThirdPartyCookies()Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockCookiesValue()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    .line 69
    const v2, 0x7f0f00f6

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockCookiesValue()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/mozilla/focus/utils/Settings;->resources:Landroid/content/res/Resources;

    .line 72
    const v2, 0x7f0f00f7

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldShowFirstrun()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "firstrun_shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final shouldUseSecureMode()Z
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/focus/utils/Settings;->preferences:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00bc

    invoke-direct {p0, v1}, Lorg/mozilla/focus/utils/Settings;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
