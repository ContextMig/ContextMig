.class public final Lorg/mozilla/focus/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/FileUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/utils/FileUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/utils/FileUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/utils/FileUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/utils/FileUtils;->Companion:Lorg/mozilla/focus/utils/FileUtils$Companion;

    return-void
.end method

.method public static final deleteWebViewDirectory(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lorg/mozilla/focus/utils/FileUtils;->Companion:Lorg/mozilla/focus/utils/FileUtils$Companion;

    invoke-virtual {v0, p0}, Lorg/mozilla/focus/utils/FileUtils$Companion;->deleteWebViewDirectory(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final truncateCacheDirectory(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lorg/mozilla/focus/utils/FileUtils;->Companion:Lorg/mozilla/focus/utils/FileUtils$Companion;

    invoke-virtual {v0, p0}, Lorg/mozilla/focus/utils/FileUtils$Companion;->truncateCacheDirectory(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
