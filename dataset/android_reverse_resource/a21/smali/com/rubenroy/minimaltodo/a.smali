.class Lcom/rubenroy/minimaltodo/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/AboutActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/a;->a:Lcom/rubenroy/minimaltodo/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/a;->a:Lcom/rubenroy/minimaltodo/AboutActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->a(Lcom/rubenroy/minimaltodo/AboutActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    move-result-object v0

    const-string v1, "Action"

    const-string v2, "Feedback"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
