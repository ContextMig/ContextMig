.class public final Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;
.super Ljava/lang/Object;
.source "ManualAddSearchEnginePreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSEARCH_ENGINE_NAME_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->getSEARCH_ENGINE_NAME_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSEARCH_QUERY_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->getSEARCH_QUERY_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSUPER_STATE_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->getSUPER_STATE_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSEARCH_ENGINE_NAME_KEY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->access$getSEARCH_ENGINE_NAME_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSEARCH_QUERY_KEY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->access$getSEARCH_QUERY_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSUPER_STATE_KEY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->access$getSUPER_STATE_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
