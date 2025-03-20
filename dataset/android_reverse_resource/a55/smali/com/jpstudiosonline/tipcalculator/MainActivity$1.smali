.class Lcom/jpstudiosonline/tipcalculator/MainActivity$1;
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
    .line 68
    iput-object p1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$1;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 96
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 97
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$1;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v1}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$000(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 98
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 77
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 78
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity$1;->this$0:Lcom/jpstudiosonline/tipcalculator/MainActivity;

    invoke-static {v1}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->access$000(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 79
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
