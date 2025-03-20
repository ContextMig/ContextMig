.class public Lcom/batch/android/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/batch/android/g/c",
        "<",
        "Lcom/batch/android/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/batch/android/g/a;-><init>(Lcom/batch/android/json/JSONObject;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/batch/android/g/a;->a:Lcom/batch/android/json/JSONObject;

    .line 42
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/batch/android/g/a;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "application/json"

    return-object v0
.end method

.method public c()Lcom/batch/android/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/batch/android/g/a;->a:Lcom/batch/android/json/JSONObject;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/batch/android/g/a;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
