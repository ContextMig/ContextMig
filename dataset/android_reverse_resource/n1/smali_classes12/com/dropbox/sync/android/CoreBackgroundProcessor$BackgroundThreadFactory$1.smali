.class Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory$1;
.super Ljava/lang/Object;
.source "CoreBackgroundProcessor.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory$1;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionOnApiThread(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 310
    return-void
.end method
