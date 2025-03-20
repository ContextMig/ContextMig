.class public Lcom/batch/android/e/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/batch/android/e/c/b;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/batch/android/e/c/b;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/batch/android/e/c/b;->c:Lcom/batch/android/json/JSONObject;

    .line 20
    return-void
.end method
