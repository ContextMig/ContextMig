.class abstract Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
.super Ljava/lang/Object;
.source "CoreHttpRequestor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SingleRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/CoreHttpRequestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreHttpRequestor;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->this$0:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract doGet(Ljava/lang/String;Ljava/lang/Iterable;I)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;I)",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;II)",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startPut(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;II)",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
