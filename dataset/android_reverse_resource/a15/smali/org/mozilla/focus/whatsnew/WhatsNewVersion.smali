.class public Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
.super Ljava/lang/Object;
.source "WhatsNewVersion.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatsNewVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatsNewVersion.kt\norg/mozilla/focus/whatsnew/WhatsNewVersion\n*L\n1#1,37:1\n*E\n"
.end annotation


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p1, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMajorVersionNumber()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "."

    aput-object v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getVersion$app_focusWebviewUniversalRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
