.class public final Lcom/batch/android/h/a/e;
.super Lcom/batch/android/h/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/batch/android/h/e;->a:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/batch/android/h/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;Lcom/batch/android/json/JSONObject;)V

    .line 29
    return-void
.end method
