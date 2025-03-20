.class final Lcom/appflood/AFPanelActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFPanelActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFPanelActivity$1;->a:Lcom/appflood/AFPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appflood/AFPanelActivity$1;->a:Lcom/appflood/AFPanelActivity;

    invoke-static {v0}, Lcom/appflood/AFPanelActivity;->a(Lcom/appflood/AFPanelActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
