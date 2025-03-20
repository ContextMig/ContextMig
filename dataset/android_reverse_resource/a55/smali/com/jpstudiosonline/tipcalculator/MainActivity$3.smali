.class Lcom/jpstudiosonline/tipcalculator/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jpstudiosonline/tipcalculator/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;


# direct methods
.method constructor <init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jpstudiosonline/tipcalculator/MainActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    iget-object v1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    iget v1, v1, Lcom/jpstudiosonline/tipcalculator/MainActivity;->userClickedCalcTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->userClickedCalcTimes:I

    .line 149
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-virtual {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->calculateTip()V

    .line 152
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    iget v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->userClickedCalcTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 154
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 158
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$3$1;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 175
    :cond_0
    return-void
.end method
