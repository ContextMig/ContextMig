.class public final Lde/cketti/safecontentresolver/SafeContentResolverCompat;
.super Ljava/lang/Object;
.source "SafeContentResolverCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'context\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 53
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi14;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi14;-><init>(Landroid/content/Context;)V

    .line 55
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lde/cketti/safecontentresolver/SafeContentResolverApi21;

    invoke-direct {v0, p0}, Lde/cketti/safecontentresolver/SafeContentResolverApi21;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
