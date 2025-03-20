.class final Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
.super Ljava/lang/Object;
.source "CoreHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation


# instance fields
.field public final body:Ljava/io/InputStream;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final statusCode:I


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Ljava/util/Map;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "body"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    .line 179
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    .line 180
    iput-object p3, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    .line 181
    return-void
.end method
