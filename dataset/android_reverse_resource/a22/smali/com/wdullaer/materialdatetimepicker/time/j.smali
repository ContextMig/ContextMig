.class public Lcom/wdullaer/materialdatetimepicker/time/j;
.super Landroid/app/DialogFragment;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/c;
.implements Lcom/wdullaer/materialdatetimepicker/time/i;


# instance fields
.field private A:I

.field private B:Z

.field private C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:C

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:Ljava/util/ArrayList;

.field private P:Lcom/wdullaer/materialdatetimepicker/time/l;

.field private Q:I

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private a:Lcom/wdullaer/materialdatetimepicker/time/m;

.field private b:Landroid/content/DialogInterface$OnCancelListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Lcom/wdullaer/materialdatetimepicker/a;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    return-void
.end method

.method public static a(Lcom/wdullaer/materialdatetimepicker/time/m;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/j;
    .locals 6

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Lcom/wdullaer/materialdatetimepicker/time/m;IIIZ)V

    return-object v0
.end method

.method public static a(Lcom/wdullaer/materialdatetimepicker/time/m;IIZ)Lcom/wdullaer/materialdatetimepicker/time/j;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Lcom/wdullaer/materialdatetimepicker/time/m;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/j;

    move-result-object v0

    return-object v0
.end method

.method private a(IZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v0, :cond_2

    const-string v0, "%02d"

    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "%d"

    rem-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0
.end method

.method private a(IZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(IZ)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    move-object v3, v0

    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->p:I

    move v2, v0

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->p:I

    move v1, v0

    :goto_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->p:I

    :goto_3
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {v3, v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p3, :cond_1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v1, :cond_2

    rem-int/lit8 v0, v0, 0xc

    :cond_2
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    move-object v3, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->V:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    move-object v3, v0

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    move v2, v0

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    move v1, v0

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/j;IZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->a([Ljava/lang/Boolean;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    aget v3, v0, v6

    aget v4, v0, v7

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v6}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Z)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    return v0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/j;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->f(I)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/Boolean;)[I
    .locals 12

    const/4 v3, -0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    move v4, v5

    move v6, v0

    :goto_1
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v0, :cond_3

    move v7, v5

    :goto_2
    move v8, v1

    move v9, v3

    move v10, v3

    move v3, v4

    :goto_3
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_8

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->i(I)I

    move-result v0

    iget-boolean v11, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v11, :cond_0

    if-ne v3, v4, :cond_4

    move v8, v0

    :cond_0
    :goto_4
    add-int v11, v4, v7

    if-ne v3, v11, :cond_5

    move v10, v0

    :cond_1
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    move v0, v2

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v4, 0x1

    if-ne v3, v11, :cond_0

    mul-int/lit8 v11, v0, 0xa

    add-int/2addr v8, v11

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, p1, v5

    goto :goto_4

    :cond_5
    add-int v11, v4, v7

    add-int/lit8 v11, v11, 0x1

    if-ne v3, v11, :cond_6

    mul-int/lit8 v11, v0, 0xa

    add-int/2addr v10, v11

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_5

    :cond_6
    add-int v11, v4, v7

    add-int/lit8 v11, v11, 0x2

    if-ne v3, v11, :cond_7

    move v9, v0

    goto :goto_5

    :cond_7
    add-int v11, v4, v7

    add-int/lit8 v11, v11, 0x3

    if-ne v3, v11, :cond_1

    mul-int/lit8 v11, v0, 0xa

    add-int/2addr v9, v11

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_5

    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v9, v0, v1

    aput v10, v0, v2

    aput v8, v0, v5

    const/4 v1, 0x3

    aput v6, v0, v1

    return-object v0

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v4, v2

    move v6, v3

    goto/16 :goto_1
.end method

.method private b(Z)V
    .locals 11

    const/4 v10, 0x2

    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v4

    invoke-direct {p0, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZ)V

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/j;->d(I)V

    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/j;->e(I)V

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/j;->a([Ljava/lang/Boolean;)[I

    move-result-object v5

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "%02d"

    :goto_2
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "%02d"

    :goto_3
    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "%02d"

    :goto_4
    aget v6, v5, v0

    if-ne v6, v8, :cond_7

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    :goto_5
    aget v6, v5, v1

    if-ne v6, v8, :cond_8

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    :goto_6
    aget v6, v5, v10

    if-ne v6, v8, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    :goto_7
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aget v0, v5, v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(I)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    :cond_5
    const-string v3, "%2d"

    goto :goto_3

    :cond_6
    const-string v4, "%2d"

    goto :goto_4

    :cond_7
    new-array v6, v1, [Ljava/lang/Object;

    aget v7, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v6, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->K:C

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    new-array v6, v1, [Ljava/lang/Object;

    aget v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-char v6, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->K:C

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    new-array v6, v1, [Ljava/lang/Object;

    aget v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->K:C

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method static synthetic b(Lcom/wdullaer/materialdatetimepicker/time/j;)Z
    .locals 1

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/wdullaer/materialdatetimepicker/time/j;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method private c(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/n;->a:Lcom/wdullaer/materialdatetimepicker/time/n;

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/n;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f(I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->dismiss()V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Z)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x42

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Z)V

    :cond_6
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->a:Lcom/wdullaer/materialdatetimepicker/time/m;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->a:Lcom/wdullaer/materialdatetimepicker/time/m;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/m;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V

    :cond_7
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_8
    const/16 v0, 0x43

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->k()I

    move-result v0

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v3

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->M:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Z)V

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v3

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->i(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    const/4 v0, 0x7

    if-eq p1, v0, :cond_d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    const/16 v0, 0xb

    if-eq p1, v0, :cond_d

    const/16 v0, 0xc

    if-eq p1, v0, :cond_d

    const/16 v0, 0xd

    if-eq p1, v0, :cond_d

    const/16 v0, 0xe

    if-eq p1, v0, :cond_d

    const/16 v0, 0xf

    if-eq p1, v0, :cond_d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v0, :cond_9

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v0

    if-eq p1, v0, :cond_d

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v0

    if-ne p1, v0, :cond_9

    :cond_d
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_e

    const-string v0, "TimePickerDialog"

    const-string v2, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->g(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Z)V

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method private g(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Z)V

    :cond_1
    return-void
.end method

.method private h(I)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    :goto_0
    if-eq v3, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->i()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->k()I

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->i(I)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    :goto_2
    if-gt v2, v0, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    goto :goto_2
.end method

.method private static i(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private i()Z
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->b(I)Lcom/wdullaer/materialdatetimepicker/time/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private j(I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->Q:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->R:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    new-array v0, v8, [C

    aput-char v4, v0, v1

    aput-char v5, v0, v7

    invoke-virtual {v3, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->Q:I

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->R:I

    :cond_1
    :goto_1
    if-nez p1, :cond_4

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->Q:I

    :goto_2
    return v0

    :cond_2
    const-string v0, "TimePickerDialog"

    const-string v1, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p1, v7, :cond_5

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->R:I

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private j()Z
    .locals 6

    const/16 v5, 0x3c

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->a([Ljava/lang/Boolean;)[I

    move-result-object v2

    aget v3, v2, v1

    if-ltz v3, :cond_0

    aget v3, v2, v0

    if-ltz v3, :cond_0

    aget v3, v2, v0

    if-ge v3, v5, :cond_0

    aget v3, v2, v4

    if-ltz v3, :cond_0

    aget v2, v2, v4

    if-ge v2, v5, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private k()I
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return v0
.end method

.method private l()V
    .locals 19

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xe

    const/16 v9, 0xf

    const/16 v10, 0x10

    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-direct {v11, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v11, :cond_2

    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v12, 0x6

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v1, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    const/4 v13, 0x2

    aput v3, v12, v13

    const/4 v13, 0x3

    aput v4, v12, v13

    const/4 v13, 0x4

    aput v5, v12, v13

    const/4 v13, 0x5

    aput v6, v12, v13

    invoke-direct {v11, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    new-instance v12, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v13, 0xa

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v1, v13, v14

    const/4 v14, 0x1

    aput v2, v13, v14

    const/4 v14, 0x2

    aput v3, v13, v14

    const/4 v14, 0x3

    aput v4, v13, v14

    const/4 v14, 0x4

    aput v5, v13, v14

    const/4 v14, 0x5

    aput v6, v13, v14

    const/4 v14, 0x6

    aput v7, v13, v14

    const/4 v14, 0x7

    aput v8, v13, v14

    const/16 v14, 0x8

    aput v9, v13, v14

    const/16 v14, 0x9

    aput v10, v13, v14

    invoke-direct {v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v11, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v13, :cond_0

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    aput v3, v14, v15

    const/4 v15, 0x3

    aput v4, v14, v15

    const/4 v15, 0x4

    aput v5, v14, v15

    const/4 v15, 0x5

    aput v6, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v15, 0xa

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    const/16 v16, 0x6

    aput v7, v15, v16

    const/16 v16, 0x7

    aput v8, v15, v16

    const/16 v16, 0x8

    aput v9, v15, v16

    const/16 v16, 0x9

    aput v10, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    :cond_0
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x6

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v14, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v7, v16, v17

    const/16 v17, 0x1

    aput v8, v16, v17

    const/16 v17, 0x2

    aput v9, v16, v17

    const/16 v17, 0x3

    aput v10, v16, v17

    invoke-direct/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v7, v15, v16

    const/16 v16, 0x1

    aput v8, v15, v16

    const/16 v16, 0x2

    aput v9, v15, v16

    const/16 v16, 0x3

    aput v10, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v14, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/4 v1, 0x1

    aput v2, v15, v1

    const/4 v1, 0x2

    aput v3, v15, v1

    const/4 v1, 0x3

    aput v4, v15, v1

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v14, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v6, v2, v3

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v1, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v2, 0x7

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v8, v2, v3

    const/4 v3, 0x5

    aput v9, v2, v3

    const/4 v3, 0x6

    aput v10, v2, v3

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v1, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/wdullaer/materialdatetimepicker/time/j;->j(I)I

    move-result v14

    aput v14, v12, v13

    invoke-direct {v11, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    new-instance v12, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v1, v13, v14

    const/4 v14, 0x1

    aput v2, v13, v14

    const/4 v14, 0x2

    aput v3, v13, v14

    const/4 v14, 0x3

    aput v4, v13, v14

    const/4 v14, 0x4

    aput v5, v13, v14

    const/4 v14, 0x5

    aput v6, v13, v14

    invoke-direct {v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v14, 0xa

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    aput v3, v14, v15

    const/4 v15, 0x3

    aput v4, v14, v15

    const/4 v15, 0x4

    aput v5, v14, v15

    const/4 v15, 0x5

    aput v6, v14, v15

    const/4 v15, 0x6

    aput v7, v14, v15

    const/4 v15, 0x7

    aput v8, v14, v15

    const/16 v15, 0x8

    aput v9, v14, v15

    const/16 v15, 0x9

    aput v10, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v2, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v13, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v14, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v1, v16, v17

    const/16 v17, 0x1

    aput v2, v16, v17

    const/16 v17, 0x2

    aput v3, v16, v17

    const/16 v17, 0x3

    aput v4, v16, v17

    const/16 v17, 0x4

    aput v5, v16, v17

    const/16 v17, 0x5

    aput v6, v16, v17

    invoke-direct/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v15, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v16, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v1, v17, v18

    const/16 v18, 0x1

    aput v2, v17, v18

    const/16 v18, 0x2

    aput v3, v17, v18

    const/16 v18, 0x3

    aput v4, v17, v18

    const/16 v18, 0x4

    aput v5, v17, v18

    const/16 v18, 0x5

    aput v6, v17, v18

    const/16 v18, 0x6

    aput v7, v17, v18

    const/16 v18, 0x7

    aput v8, v17, v18

    const/16 v18, 0x8

    aput v9, v17, v18

    const/16 v18, 0x9

    aput v10, v17, v18

    invoke-direct/range {v16 .. v17}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    :cond_3
    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v7, v16, v17

    const/16 v17, 0x1

    aput v8, v16, v17

    const/16 v17, 0x2

    aput v9, v16, v17

    const/16 v17, 0x3

    aput v10, v16, v17

    invoke-direct/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v15, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v14, :cond_4

    invoke-virtual {v15, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    :cond_4
    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v4, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    const/16 v16, 0x2

    aput v6, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v15, 0xa

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    const/16 v16, 0x6

    aput v7, v15, v16

    const/16 v16, 0x7

    aput v8, v15, v16

    const/16 v16, 0x8

    aput v9, v15, v16

    const/16 v16, 0x9

    aput v10, v15, v16

    invoke-direct {v13, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v13, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v14, :cond_5

    invoke-virtual {v13, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    :cond_5
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v14, 0x8

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aput v5, v14, v15

    const/4 v15, 0x3

    aput v6, v14, v15

    const/4 v15, 0x4

    aput v7, v14, v15

    const/4 v15, 0x5

    aput v8, v14, v15

    const/4 v15, 0x6

    aput v9, v14, v15

    const/4 v15, 0x7

    aput v10, v14, v15

    invoke-direct {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->P:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v13, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v15, 0x6

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    invoke-direct {v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/l;

    const/16 v15, 0xa

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/4 v1, 0x1

    aput v2, v15, v1

    const/4 v1, 0x2

    aput v3, v15, v1

    const/4 v1, 0x3

    aput v4, v15, v1

    const/4 v1, 0x4

    aput v5, v15, v1

    const/4 v1, 0x5

    aput v6, v15, v1

    const/4 v1, 0x6

    aput v7, v15, v1

    const/4 v1, 0x7

    aput v8, v15, v1

    const/16 v1, 0x8

    aput v9, v15, v1

    const/16 v1, 0x9

    aput v10, v15, v1

    invoke-direct {v13, v15}, Lcom/wdullaer/materialdatetimepicker/time/l;-><init>([I)V

    invoke-virtual {v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    invoke-virtual {v13, v11}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v1, :cond_1

    invoke-virtual {v13, v12}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/n;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 8

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_2

    const v2, 0x7fffffff

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v0, p1

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    sget-object v3, Lcom/wdullaer/materialdatetimepicker/time/n;->b:Lcom/wdullaer/materialdatetimepicker/time/n;

    if-ne p2, v3, :cond_0

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v7

    if-eq v3, v7, :cond_0

    move v1, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/wdullaer/materialdatetimepicker/time/n;->c:Lcom/wdullaer/materialdatetimepicker/time/n;

    if-ne p2, v3, :cond_1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v7

    if-eq v3, v7, :cond_1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v7

    if-eq v3, v7, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_3

    move-object v0, v1

    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    goto :goto_2

    :cond_5
    move-object v0, p1

    goto :goto_2
.end method

.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, v1, v1, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZ)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->d(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->e(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v6

    if-eq v5, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    if-le v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_a

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v7

    if-ne v6, v7, :cond_6

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v5

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_9

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-lez v2, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v4

    const/16 v5, 0x3b

    invoke-direct {v2, v3, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    return-void
.end method

.method public b(Lcom/wdullaer/materialdatetimepicker/time/m;IIIZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->a:Lcom/wdullaer/materialdatetimepicker/time/m;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-boolean p5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->w:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->y:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->z:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->B:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_ok:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->G:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_cancel:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->I:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    return v0
.end method

.method public b(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    return v0
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->d:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->c()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v2, 0xc

    invoke-direct {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public g()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v2, 0xc

    invoke-direct {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v6

    if-ltz v6, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->a:Lcom/wdullaer/materialdatetimepicker/time/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->a:Lcom/wdullaer/materialdatetimepicker/time/m;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/m;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->w:Ljava/lang/String;

    const-string v0, "theme_dark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    const-string v0, "theme_dark_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->y:Z

    const-string v0, "accent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->z:Z

    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->B:Z

    const-string v0, "selectable_times"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    check-cast v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const-string v0, "min_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const-string v0, "max_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const-string v0, "enable_seconds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    const-string v0, "ok_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->G:I

    const-string v0, "ok_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->H:Ljava/lang/String;

    const-string v0, "cancel_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->I:I

    const-string v0, "cancel_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->J:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    sget v0, Lcom/wdullaer/materialdatetimepicker/g;->mdtp_time_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/k;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/k;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;Lcom/wdullaer/materialdatetimepicker/time/j$1;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_picker_dialog:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    :cond_0
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->y:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    invoke-static {v0, v2}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    :cond_1
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_hour_picker_description:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->S:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_hours:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->T:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_minute_picker_description:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->U:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_minutes:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->V:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_second_picker_description:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->W:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_seconds:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->X:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_white:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->p:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_accent_color_focused:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->q:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->hours:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->hour_space:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->h:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->minutes_space:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->j:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->minutes:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->seconds_space:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->l:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->seconds:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->ampm_label:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->r:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->s:Ljava/lang/String;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wdullaer/materialdatetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->d:Lcom/wdullaer/materialdatetimepicker/a;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_picker:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/c;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    invoke-virtual {v0, v3, p0, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/j;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const-string v3, "current_item_showing"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "current_item_showing"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->invalidate()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/j$1;

    invoke-direct {v3, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->i:Landroid/widget/TextView;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/j$2;

    invoke-direct {v3, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->k:Landroid/widget/TextView;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/j$3;

    invoke-direct {v3, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$3;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->ok:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/j$4;

    invoke-direct {v3, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$4;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    const-string v1, "Roboto-Medium"

    invoke-static {v5, v1}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->H:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->cancel:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/j$5;

    invoke-direct {v1, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$5;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    const-string v1, "Roboto-Medium"

    invoke-static {v5, v1}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->J:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->ampm_hitspace:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->n:Landroid/view/View;

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->separator_seconds:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-nez v0, :cond_d

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->separator:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->t:Z

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(IZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->d(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->e(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_time_placeholder:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_deleted_key:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->L:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->K:C

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->R:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->Q:I

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->l()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-eqz v0, :cond_f

    const-string v0, "typed_times"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->g(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_5
    :goto_5
    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_picker_header:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->w:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_display_background:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_display:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_7

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->done_background:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_circle_background:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v1

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_background_color:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v3

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_light_gray:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v2

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_light_gray:I

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    if-eqz v6, :cond_10

    :goto_6
    invoke-virtual {v5, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->time_picker_dialog:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    if-eqz v0, :cond_11

    move v0, v2

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v4

    :cond_8
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->f:Landroid/widget/Button;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->e:Landroid/widget/Button;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x8

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->u:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->n:Landroid/view/View;

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/j$6;

    invoke-direct {v1, p0}, Lcom/wdullaer/materialdatetimepicker/time/j$6;-><init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->separator:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    sget v6, Lcom/wdullaer/materialdatetimepicker/f;->minutes_space:I

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    if-nez v0, :cond_e

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_e
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    sget v3, Lcom/wdullaer/materialdatetimepicker/f;->center_view:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    goto/16 :goto_5

    :cond_10
    move v0, v1

    goto/16 :goto_6

    :cond_11
    move v0, v3

    goto/16 :goto_7
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->c:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->d:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->b()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/j;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->d:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    const-string v0, "initial_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->o:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->N:Z

    if-eqz v0, :cond_0

    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->O:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "accent"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->A:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "selectable_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->C:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "min_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->D:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "max_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->E:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "enable_seconds"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->F:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ok_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->G:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->I:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
