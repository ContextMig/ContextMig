.class Lcom/dropbox/sync/android/NativeHttp$1;
.super Ljava/lang/Object;
.source "NativeHttp.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/NativeHttp;->doGetToFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeHttp;

.field final synthetic val$contentLength:J

.field final synthetic val$passProgressHandle:J


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/NativeHttp;JJ)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeHttp$1;->this$0:Lcom/dropbox/sync/android/NativeHttp;

    iput-wide p2, p0, Lcom/dropbox/sync/android/NativeHttp$1;->val$passProgressHandle:J

    iput-wide p4, p0, Lcom/dropbox/sync/android/NativeHttp$1;->val$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 7
    .param p1, "bytesTransferred"    # J

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeHttp$1;->val$passProgressHandle:J

    iget-wide v4, p0, Lcom/dropbox/sync/android/NativeHttp$1;->val$contentLength:J

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/sync/android/NativeHttp;->access$000(JJJ)V

    .line 559
    return-void
.end method
