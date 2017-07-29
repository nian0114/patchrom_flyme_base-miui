.class Lcom/android/settings_ex/gW;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field index:I

.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;

.field yg:[I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 1

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/settings_ex/gW;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/gW;->yg:[I

    .line 1057
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/gW;->index:I

    return-void

    .line 1056
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public hg()I
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/settings_ex/gW;->yg:[I

    iget v1, p0, Lcom/android/settings_ex/gW;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1065
    iget v0, p0, Lcom/android/settings_ex/gW;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/gW;->index:I

    .line 1066
    iget v0, p0, Lcom/android/settings_ex/gW;->index:I

    iget-object v1, p0, Lcom/android/settings_ex/gW;->yg:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/gW;->index:I

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/gW;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->o(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gW;->yg:[I

    iget v2, p0, Lcom/android/settings_ex/gW;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/settings_ex/gW;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->F(Lcom/android/settings_ex/RadioInfo;)V

    .line 1071
    return-void
.end method
