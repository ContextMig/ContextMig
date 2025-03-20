.class final Lcom/dropbox/sync/android/CoreAndroidUtil$1;
.super Ljava/lang/Object;
.source "CoreAndroidUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreAndroidUtil;->exitOnFatalError(Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fatalEx:Lcom/dropbox/sync/android/DbxRuntimeException;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxRuntimeException;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreAndroidUtil$1;->val$fatalEx:Lcom/dropbox/sync/android/DbxRuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAndroidUtil$1;->val$fatalEx:Lcom/dropbox/sync/android/DbxRuntimeException;

    throw v0
.end method
