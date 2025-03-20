.class public Lcom/batch/android/j/c;
.super Lcom/batch/android/d/c;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "ba_event_ws_finished"


# direct methods
.method public constructor <init>(Lcom/batch/android/i/c;Lcom/batch/android/d/c$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/batch/android/d/c;-><init>(Lcom/batch/android/i/c;Lcom/batch/android/d/c$a;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;Lcom/batch/android/l/a/e;)Lcom/batch/android/c/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;",
            "Lcom/batch/android/l/a/e;",
            ")",
            "Lcom/batch/android/c/ac;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/batch/android/j/c;->a:Lcom/batch/android/i/c;

    invoke-static {v0, p1, p2}, Lcom/batch/android/p;->a(Lcom/batch/android/i/c;Ljava/util/List;Lcom/batch/android/l/a/e;)Lcom/batch/android/c/ac;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "ba_event_ws_finished"

    return-object v0
.end method
