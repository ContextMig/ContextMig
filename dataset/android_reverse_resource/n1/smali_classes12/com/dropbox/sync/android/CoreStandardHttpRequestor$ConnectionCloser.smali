.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$ConnectionCloser;
.super Ljava/lang/Object;
.source "CoreStandardHttpRequestor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionCloser"
.end annotation


# instance fields
.field private final mConnToClose:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$ConnectionCloser;->mConnToClose:Ljavax/net/ssl/HttpsURLConnection;

    .line 146
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$ConnectionCloser;->mConnToClose:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 150
    return-void
.end method
