.class public final Lorg/mozilla/focus/whatsnew/WhatsNew;
.super Ljava/lang/Object;
.source "WhatsNew.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatsNew.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatsNew.kt\norg/mozilla/focus/whatsnew/WhatsNew\n*L\n1#1,116:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

.field private static wasUpdatedRecently:Ljava/lang/Boolean;


# instance fields
.field private final storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/whatsnew/WhatsNew;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)V
    .locals 0
    .param p1, "storage"    # Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "storage"    # Lorg/mozilla/focus/whatsnew/WhatsNewStorage;
    .param p2, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/mozilla/focus/whatsnew/WhatsNew;-><init>(Lorg/mozilla/focus/whatsnew/WhatsNewStorage;)V

    return-void
.end method

.method public static final synthetic access$clearWhatsNewCounter(Lorg/mozilla/focus/whatsnew/WhatsNew;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/whatsnew/WhatsNew;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/mozilla/focus/whatsnew/WhatsNew;->clearWhatsNewCounter()V

    return-void
.end method

.method public static final synthetic access$getWasUpdatedRecently$cp()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/mozilla/focus/whatsnew/WhatsNew;->wasUpdatedRecently:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$hasBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNew;Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/whatsnew/WhatsNew;
    .param p1, "currentVersion"    # Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/mozilla/focus/whatsnew/WhatsNew;->hasBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setWasUpdatedRecently$cp(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/Boolean;

    .prologue
    .line 22
    sput-object p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->wasUpdatedRecently:Ljava/lang/Boolean;

    return-void
.end method

.method private final clearWhatsNewCounter()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->setSessionCounter(I)V

    .line 60
    return-void
.end method

.method private final decrementAndGetSessionCounter()I
    .locals 4

    .prologue
    .line 42
    iget-object v2, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-interface {v2}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->getSessionCounter()I

    move-result v0

    .line 44
    .local v0, "cachedSessionCounter":I
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 45
    .local v1, "newSessionCounter":I
    iget-object v2, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-interface {v2, v1}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->setSessionCounter(I)V

    .line 47
    return v1
.end method

.method private final hasAppBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z
    .locals 6
    .param p1, "currentVersion"    # Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v4, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-interface {v4}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->getVersion()Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    move-result-object v2

    .line 53
    .local v2, "lastKnownAppVersion":Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 54
    .local v1, "it":Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
    invoke-virtual {p1}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getMajorVersionNumber()I

    move-result v4

    invoke-virtual {v1}, Lorg/mozilla/focus/whatsnew/WhatsNewVersion;->getMajorVersionNumber()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v3, 0x1

    .line 55
    .end local v1    # "it":Lorg/mozilla/focus/whatsnew/WhatsNewVersion;
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/whatsnew/WhatsNew;

    .local v0, "$receiver":Lorg/mozilla/focus/whatsnew/WhatsNew;
    iget-object v4, v0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-interface {v4, p1}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->setVersion(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)V

    goto :goto_0
.end method

.method private final hasBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z
    .locals 3
    .param p1, "currentVersion"    # Lorg/mozilla/focus/whatsnew/WhatsNewVersion;

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/focus/whatsnew/WhatsNew;->hasAppBeenUpdatedRecently(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    invoke-interface {v1, p1}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->setVersion(Lorg/mozilla/focus/whatsnew/WhatsNewVersion;)V

    .line 30
    iget-object v1, p0, Lorg/mozilla/focus/whatsnew/WhatsNew;->storage:Lorg/mozilla/focus/whatsnew/WhatsNewStorage;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/mozilla/focus/whatsnew/WhatsNewStorage;->setSessionCounter(I)V

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/focus/whatsnew/WhatsNew;->decrementAndGetSessionCounter()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
