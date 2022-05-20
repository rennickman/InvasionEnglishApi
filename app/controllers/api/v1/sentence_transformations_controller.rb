class Api::V1::SentenceTransformationsController < ApiController
    before_action :set_sentence_transformation, only: %i[ show edit update destroy ]

    # GET /sentence_transformations or /sentence_transformations.json
    def index
        @sentence_transformations = SentenceTransformation.all
        render json: @sentence_transformations
    end


    # GET /sentence_transformations/1 or /sentence_transformations/1.json
    def show
    end


    # GET /sentence_transformations/new
    def new
        @sentence_transformation = SentenceTransformation.new
    end


    # GET /sentence_transformations/1/edit
    def edit
    end


    # POST /sentence_transformations or /sentence_transformations.json
    def create
        @sentence_transformation = SentenceTransformation.new(sentence_transformation_params)

        respond_to do |format|
            if @sentence_transformation.save
                format.html { redirect_to sentence_transformation_url(@sentence_transformation), notice: "Sentence transformation was successfully created." }
                format.json { render :show, status: :created, location: @sentence_transformation }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @sentence_transformation.errors, status: :unprocessable_entity }
            end
        end
    end


    # PATCH/PUT /sentence_transformations/1 or /sentence_transformations/1.json
    def update
        respond_to do |format|
            if @sentence_transformation.update(sentence_transformation_params)
                format.html { redirect_to sentence_transformation_url(@sentence_transformation), notice: "Sentence transformation was successfully updated." }
                format.json { render :show, status: :ok, location: @sentence_transformation }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @sentence_transformation.errors, status: :unprocessable_entity }
            end
        end
    end


    # DELETE /sentence_transformations/1 or /sentence_transformations/1.json
    def destroy
        @sentence_transformation.destroy

        respond_to do |format|
            format.html { redirect_to sentence_transformations_url, notice: "Sentence transformation was successfully destroyed." }
            format.json { head :no_content }
        end
    end





    private



    # Use callbacks to share common setup or constraints between actions.
    def set_sentence_transformation
        @sentence_transformation = SentenceTransformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sentence_transformation_params
        params.require(:sentence_transformation).permit(:original, :keyword, :partial, :answer)
    end
end
