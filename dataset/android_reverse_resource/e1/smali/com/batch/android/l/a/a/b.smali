.class public Lcom/batch/android/l/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->a(J)V

    .line 26
    return-void
.end method

.method public a(Lcom/batch/android/h/a/b;)V
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    iget-object v1, p1, Lcom/batch/android/h/a/b;->a:Ljava/lang/String;

    iget-wide v2, p1, Lcom/batch/android/h/a/b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/f/g;->a(Ljava/lang/String;J)V

    .line 20
    return-void
.end method
