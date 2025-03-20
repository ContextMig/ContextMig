.class Lcom/appsbyvir/tipcalculator/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsbyvir/tipcalculator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsbyvir/tipcalculator/MainActivity;


# direct methods
.method constructor <init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v1}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$5(Lcom/appsbyvir/tipcalculator/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$2(Lcom/appsbyvir/tipcalculator/MainActivity;D)V

    .line 210
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    iget-object v0, v0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountET:Landroid/widget/EditText;

    const-string v1, "%.02f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v4}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$6(Lcom/appsbyvir/tipcalculator/MainActivity;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity$4;->this$0:Lcom/appsbyvir/tipcalculator/MainActivity;

    invoke-static {v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->access$1(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    .line 214
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 222
    return-void
.end method
