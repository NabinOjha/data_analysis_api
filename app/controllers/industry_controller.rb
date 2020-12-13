class IndustryController < ApplicationController
    require 'json'
    require 'date'
          def index     
            excludedFields = ['limit', 'controller', 'action', 'offset', 'sort']
            filter_parameters = params.clone
  
            excludedFields.each do |not_query_param|
              filter_parameters.delete(not_query_param)
            end
  
             def convert_to_hash(string)
              JSON.parse(string)
            end   
  
  
            def create_filter_query(filter_parameters)
              filter_query = ''
              # puts filter_parameters
  
  
              def equals_to_query(filter_query, key, value)
                if(filter_query.empty?)
                 return  filter_query << "#{key} = #{value}"
                else
                 return  filter_query << " AND #{key} = #{value}"
                end
              end
  
              def number_range_query(filter_query, key, filter_parameters)
                if(filter_query.empty?)
                 return filter_query << "#{key} >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND #{key} <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
               else
                 return filter_query << " AND #{key} >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND #{key} <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
               end
              end
  
              filter_parameters.each do |key, value|
                if key == "name"
                  # if(filter_query.empty?)
                  #   filter_query << "name = #{value}"
                  # else
                  #   filter_query << " AND name = #{value}"
                  filter_query = equals_to_query(filter_query, key, value)
                 
  
                elsif key =="business_type"
                  # if(filter_query.empty?)
                  #   filter_query << "business_type = #{value}"
                  #  else
                  #   filter_query << " AND business_type = #{value}"
                  filter_query = equals_to_query(filter_query, key, value)
                  # end
  
                elsif key == "address"
                  # if(filter_query.empty?)
                  #   filter_query << "address = #{value}"
                  # else
                  #   filter_query << " AND address = #{value}"
                  # end
                  filter_query = equals_to_query(filter_query, key, value)
  
                elsif key == "email"
                  # if(filter_query.empty?)
                  #   filter_query << "email = #{value}"
                  # else
                  #   filter_query << " AND email = #{value}"
                  # end
                  filter_query = equals_to_query(filter_query, key, value)
  
  
                elsif key == "num_employees"
                  # if(filter_query.empty?)
                  #    filter_query << "num_employees >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND num_employees <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
                  # else
                  #   filter_query << " AND num_employees >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND num_employees <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
                  # end
                  filter_query = number_range_query(filter_query, key, filter_parameters)
  
                elsif key == "established_date"
                  if(filter_query.empty?)
                    filter_query << "established_date >=  '#{Date.parse(convert_to_hash(filter_parameters[key])['gte'])}' AND established_date <= '#{Date.parse(convert_to_hash(filter_parameters[key])['lte'])}'"
                  else
                    filter_query << " AND established_date >=  '#{Date.parse(convert_to_hash(filter_parameters[key])['gte'])}' AND established_date <= '#{Date.parse(convert_to_hash(filter_parameters[key])['lte'])}'"
                  end
  
                elsif key == "avg_salary"
                  if(filter_query.empty?)
                     filter_query << "avg_salary >= #{(convert_to_hash(filter_parameters[key])['gte']).to_f} AND avg_salary <= #{(convert_to_hash(filter_parameters[key])['lte']).to_f}"
                  else
                    filter_query << " AND avg_salary >= #{(convert_to_hash(filter_parameters[key])['gte']).to_f} AND avg_salary <= #{(convert_to_hash(filter_parameters[key])['lte']).to_f}"
                  end
  
                elsif key == "total_branches"
                  # if(filter_query.empty?)
                  #    filter_query << "total_branches >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND total_branches <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
                  # else
                  #   filter_query << " AND total_branches >= #{(convert_to_hash(filter_parameters[key])['gte']).to_i} AND total_branches <= #{(convert_to_hash(filter_parameters[key])['lte']).to_i}"
                  # end
                  filter_query = number_range_query(filter_query, key, filter_parameters)
                end
              end
  
              puts filter_query
  
              # "name = 'Quatz' AND num_employees >=50 AND num_employees <=90"
             return  filter_query
            end
  
  
            
            # pagination and sorting parameters
            sort_by = params[:sort]
            limit = params[:limit]
            offset = params[:offset]
  
  
            
           
            # sorting and pagination
          if sort_by && !limit && !offset
            @businesses = Business.where(create_filter_query(filter_parameters)).order(sort_by)
           elsif(!sort_by && limit && offset)
              @businesses = Business.where(create_filter_query(filter_parameters)).limit(limit.to_i).offset(offset.to_i)
           elsif(sort_by && limit && offset)
            @businesses = Business.where(create_filter_query(filter_parameters)).order(sort_by).limit(limit.to_i).offset(offset.to_i)
           else
            @businesses = Business.where(create_filter_query(filter_parameters))
           end
  
           
  
            
           
                    
            #filtering
            # @businesses = @businesses.filter{|business| business.name == params[:name]} if params[:name].present?
            # @businesses = @businesses.filter{|business| business.business_type== params[:business_type]} if params[:business_type].present?
            # @businesses = @businesses.filter{|business| business.address== params[:address]} if params[:address].present?
            # @businesses = @businesses.filter {|business| business.email == params[:email]} if params[:email].present?
            # @businesses =  @businesses.filter{|business| business.num_employees >= (convert_to_hash(params[:num_employees])['gte']).to_i && business.num_employees <= (convert_to_hash(params[:num_employees])['lte']).to_i} if params[:num_employees].present?
            # @businesses = @businesses.filter{|business|  business.established_date >=  Date.parse(convert_to_hash(params[:established_date])['gte']) && business.established_date <= Date.parse(convert_to_hash(params[:established_date])['lte'])} if params[:established_date].present?
            # @businesses = @businesses.filter{|business| business.avg_salary >= convert_to_hash(params[:avg_salary])['gte'].to_f && business.avg_salary <= convert_to_hash(params[:avg_salary])['lte'].to_f} if params[:avg_salary].present?
            # @businesses = @businesses.filter{|business|  business.total_branches >= convert_to_hash(params[:total_branches])['gte'].to_i && business.total_branches <= convert_to_hash(params[:total_branches])['lte'].to_i} if params[:total_branches].present?
  
  
            render :json => @businesses
          end
  
          def search_matches(field_name, search_param)
            search_param.strip! if search_param.present?
            Business.where("#{field_name} ILIKE ?", "%#{search_param}%")
          end
  
          def search
            result_businesses = []
            fields_to_search_for = ['name', 'email', 'business_type', 'address']
            fields_to_search_for.each do |field_name|
              result_businesses = result_businesses + search_matches(field_name, params[:search])
            end 
            puts result_businesses
            render :json => result_businesses.uniq
          end
  
          def get_highest_value
            @business = Business.order("#{params[:field]} DESC").first
            render :json => @business
          end
  
          def get_lowest_value
            @business = Business.order("#{params[:field]} ASC").first
            render :json => @business
          end
  
      
          # def create
      
          # end
      
          # def show
      
          # end
      
          # def update
          # end
      
          # def destroy
      
          # end
     
end
