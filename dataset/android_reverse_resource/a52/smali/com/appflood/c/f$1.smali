.class final Lcom/appflood/c/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/f;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/appflood/c/f;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/c/f;->a(Landroid/content/Context;)V

    return-void
.end method
