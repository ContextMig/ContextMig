.class public Lcom/getkeepsafe/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;,
        Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;,
        Lcom/getkeepsafe/relinker/ReLinker$Logger;,
        Lcom/getkeepsafe/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 52
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 64
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 58
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .prologue
    .line 70
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 71
    return-void
.end method

.method public static log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1
    .param p0, "logger"    # Lcom/getkeepsafe/relinker/ReLinker$Logger;

    .prologue
    .line 78
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method
