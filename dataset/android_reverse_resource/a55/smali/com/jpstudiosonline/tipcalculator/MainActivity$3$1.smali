.class Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jpstudiosonline/tipcalculator/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/jpstudiosonline/tipcalculator/MainActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jpstudiosonline/tipcalculator/MainActivity$3;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;->this$1:Lcom/jpstudiosonline/tipcalculator/MainActivity$3;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;->this$1:Lcom/jpstudiosonline/tipcalculator/MainActivity$3;

    iget-object v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 163
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;->this$1:Lcom/jpstudiosonline/tipcalculator/MainActivity$3;

    iget-object v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->userClickedCalcTimes:I

    .line 164
    return-void
.end method
