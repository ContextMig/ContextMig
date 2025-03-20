.class final Lcom/dropbox/sync/android/CoreHttpRequestor$Header;
.super Ljava/lang/Object;
.source "CoreHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;->key:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;->value:Ljava/lang/String;

    .line 113
    return-void
.end method
