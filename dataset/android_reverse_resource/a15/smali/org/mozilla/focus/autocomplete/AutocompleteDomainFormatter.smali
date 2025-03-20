.class public final Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;
.super Ljava/lang/Object;
.source "AutocompleteDomainFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutocompleteDomainFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutocompleteDomainFormatter.kt\norg/mozilla/focus/autocomplete/AutocompleteDomainFormatter\n*L\n1#1,19:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;

.field private static final urlMatcher:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;

    invoke-direct {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;-><init>()V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;->INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;

    .line 9
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(https?://)?(www.)?(.+)?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;->urlMatcher:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v4, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;->urlMatcher:Lkotlin/text/Regex;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v2, v5, v6, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    .line 14
    .local v1, "result":Lkotlin/text/MatchResult;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 15
    .local v0, "it":Lkotlin/text/MatchResult;
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_0
    if-eqz v2, :cond_0

    move-object p1, v2

    .line 16
    .end local v0    # "it":Lkotlin/text/MatchResult;
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    return-object p1

    .restart local v0    # "it":Lkotlin/text/MatchResult;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 15
    goto :goto_0
.end method
