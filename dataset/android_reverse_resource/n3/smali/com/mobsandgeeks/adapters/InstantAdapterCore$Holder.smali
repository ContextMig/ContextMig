.class Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
.super Ljava/lang/Object;
.source "InstantAdapterCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/adapters/InstantAdapterCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field meta:Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "meta"    # Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    .line 214
    iput-object p2, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->meta:Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    .line 215
    return-void
.end method
