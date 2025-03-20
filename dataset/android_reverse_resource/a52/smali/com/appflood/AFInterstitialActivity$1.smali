.class final Lcom/appflood/AFInterstitialActivity$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/AFInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFInterstitialActivity$1;->a:Lcom/appflood/AFInterstitialActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/appflood/AFInterstitialActivity$1$1;

    invoke-direct {v0, p0}, Lcom/appflood/AFInterstitialActivity$1$1;-><init>(Lcom/appflood/AFInterstitialActivity$1;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
