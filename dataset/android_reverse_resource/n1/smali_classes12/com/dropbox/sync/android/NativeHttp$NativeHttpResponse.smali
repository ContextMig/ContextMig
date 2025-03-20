.class Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
.super Ljava/lang/Object;
.source "NativeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeHttpResponse"
.end annotation


# instance fields
.field public final responseBytes:[B

.field public final responseCode:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "setRC"    # I
    .param p2, "setRB"    # [B

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;->responseCode:I

    .line 85
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;->responseBytes:[B

    .line 86
    return-void
.end method
