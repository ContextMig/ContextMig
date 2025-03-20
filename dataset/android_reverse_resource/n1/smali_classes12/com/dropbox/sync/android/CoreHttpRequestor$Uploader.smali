.class abstract Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
.super Ljava/lang/Object;
.source "CoreHttpRequestor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uploader"
.end annotation


# instance fields
.field public final body:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "body"    # Ljava/io/OutputStream;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->body:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract finish()Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
