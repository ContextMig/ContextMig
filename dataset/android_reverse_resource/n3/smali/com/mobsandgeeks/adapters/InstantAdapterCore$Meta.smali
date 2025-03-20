.class Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
.super Ljava/lang/Object;
.source "InstantAdapterCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/adapters/InstantAdapterCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Meta"
.end annotation


# instance fields
.field annotation:Ljava/lang/annotation/Annotation;

.field method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;->annotation:Ljava/lang/annotation/Annotation;

    .line 227
    iput-object p2, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;->method:Ljava/lang/reflect/Method;

    .line 228
    return-void
.end method
