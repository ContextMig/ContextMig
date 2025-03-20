.class final Lcom/appflood/AFInterstitialActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFInterstitialActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFInterstitialActivity$1;


# direct methods
.method constructor <init>(Lcom/appflood/AFInterstitialActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFInterstitialActivity$1$1;->a:Lcom/appflood/AFInterstitialActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity$1$1;->a:Lcom/appflood/AFInterstitialActivity$1;

    iget-object v0, v0, Lcom/appflood/AFInterstitialActivity$1;->a:Lcom/appflood/AFInterstitialActivity;

    iget-object v0, v0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity$1$1;->a:Lcom/appflood/AFInterstitialActivity$1;

    iget-object v0, v0, Lcom/appflood/AFInterstitialActivity$1;->a:Lcom/appflood/AFInterstitialActivity;

    iget-object v0, v0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
