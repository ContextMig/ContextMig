.class final Lcom/appflood/AFPanelActivity$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFPanelActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/AFPanelActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFPanelActivity$2;->a:Lcom/appflood/AFPanelActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/appflood/AFPanelActivity$2$1;

    invoke-direct {v0, p0}, Lcom/appflood/AFPanelActivity$2$1;-><init>(Lcom/appflood/AFPanelActivity$2;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
