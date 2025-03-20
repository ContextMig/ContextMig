.class Lcom/fsck/k9/activity/setup/SliderPreference$1;
.super Ljava/lang/Object;
.source "SliderPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/SliderPreference;->onCreateDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/SliderPreference;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/SliderPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/SliderPreference;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/SliderPreference$1;->this$0:Lcom/fsck/k9/activity/setup/SliderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 156
    if-eqz p3, :cond_0

    .line 157
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference$1;->this$0:Lcom/fsck/k9/activity/setup/SliderPreference;

    iput p2, v0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    .line 158
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference$1;->this$0:Lcom/fsck/k9/activity/setup/SliderPreference;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference$1;->this$0:Lcom/fsck/k9/activity/setup/SliderPreference;

    iget v1, v1, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->access$000(Lcom/fsck/k9/activity/setup/SliderPreference;Ljava/lang/Object;)Z

    .line 160
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 152
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    return-void
.end method
