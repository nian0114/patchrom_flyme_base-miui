.class Lcom/android/settings_ex/gQ;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->v(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->u(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->x(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->w(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v0, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->z(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gQ;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->y(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    return-void
.end method
