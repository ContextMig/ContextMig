.class Lcom/jpstudiosonline/tipcalculator/MainActivity$4;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


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
    .line 178
    iput-object p1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$4;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$4;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 206
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$4;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 188
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
