.class public Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;
.super Ljava/lang/Object;
.source "OpenPgpApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenPgpDataResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field apiResult:Landroid/content/Intent;

.field sinkResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "apiResult"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult<TT;>;"
    .local p2, "sinkResult":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->apiResult:Landroid/content/Intent;

    .line 450
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->sinkResult:Ljava/lang/Object;

    .line 451
    return-void
.end method
