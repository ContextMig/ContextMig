.class final Lcom/appflood/d/a$a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/SeekBar;

.field private synthetic d:Lcom/appflood/d/a;


# direct methods
.method public constructor <init>(Lcom/appflood/d/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/appflood/d/a$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    const/16 v11, 0xf

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v3, 0x0

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video_controller_bg1.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const/16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const-string v1, "pause_press.png"

    const-string v2, "pause_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->o:I

    iget-object v2, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget v2, v2, Lcom/appflood/d/a;->o:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p1, v10}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/d/a$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    const/16 v1, 0x6600

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    const-string v1, "next_press.png"

    const-string v2, "next_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->o:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget v2, v2, Lcom/appflood/d/a;->o:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->o:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p1, v10}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/d/a$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const v1, 0x8989

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setId(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :sswitch_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bgg i =  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " second  i =  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  llll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aput-object v6, v4, v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0x1390d8

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " progress  i =  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  llll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aput-object v6, v4, v2

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x1020000

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000d

    invoke-virtual {v0, v10, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000f

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    iget-object v1, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const-string v1, "mMaxHeight"

    invoke-virtual {p0}, Lcom/appflood/d/a$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$2;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const-string v1, "mMinHeight"

    invoke-virtual {p0}, Lcom/appflood/d/a$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$2;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    const-string v1, "slide_pressed.png"

    const-string v2, "slide_press.png"

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v5, Lcom/appflood/b/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/e/h;

    invoke-direct {v1, v4, v0}, Lcom/appflood/e/h;-><init>(Landroid/graphics/drawable/StateListDrawable;Landroid/view/View;)V

    iput-object v1, v5, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v5}, Lcom/appflood/b/b;->e()V

    new-instance v1, Lcom/appflood/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/appflood/e/i;

    invoke-direct {v2, v4, v0}, Lcom/appflood/e/i;-><init>(Landroid/graphics/drawable/StateListDrawable;Landroid/view/View;)V

    iput-object v2, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->e()V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/appflood/d/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {p1, v8}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p1, v8}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/d/a$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020000 -> :sswitch_0
        0x102000d -> :sswitch_2
        0x102000f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-static {}, Lcom/appflood/c/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/d/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/appflood/d/a$a$1;-><init>(Lcom/appflood/d/a$a;I)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-boolean v0, v0, Lcom/appflood/d/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    invoke-virtual {v0, p2}, Lcom/appflood/d/a;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget-boolean v0, v0, Lcom/appflood/d/a;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0, p2}, Lcom/appflood/d/b;->a(I)V

    :goto_1
    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    sget-object v1, Lcom/appflood/mraid/A;->e:Lcom/appflood/mraid/A;

    invoke-virtual {v0, v1}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appflood/d/a$a;->d:Lcom/appflood/d/a;

    iput p2, v0, Lcom/appflood/d/a;->r:I

    goto :goto_1
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
